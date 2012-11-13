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
with AMF.DC.Holders.Alignment_Kinds;
with AMF.DC.Holders.Bounds;
with AMF.DC.Holders.Dimensions;
with AMF.DC.Holders.Points;
with AMF.DC.Point_Collections.Internals;
with AMF.DG.Canvases;
with AMF.DG.Circles;
with AMF.DG.Clip_Paths;
with AMF.DG.Ellipses;
with AMF.DG.Fills.Collections;
with AMF.DG.Gradient_Stop_Collections.Internals;
with AMF.DG.Graphical_Elements.Collections;
with AMF.DG.Groups;
with AMF.DG.Images;
with AMF.DG.Linear_Gradients;
with AMF.DG.Lines;
with AMF.DG.Marked_Elements;
with AMF.DG.Markers.Collections;
with AMF.DG.Path_Command_Collections.Internals;
with AMF.DG.Paths;
with AMF.DG.Patterns;
with AMF.DG.Polygons;
with AMF.DG.Polylines;
with AMF.DG.Radial_Gradients;
with AMF.DG.Rectangles;
with AMF.DG.Styles.Collections;
with AMF.DG.Texts;
with AMF.DG.Transform_Collections.Internals;
with AMF.Holders.Elements;
with AMF.Holders.Reals;
with AMF.Internals.Helpers;
with AMF.Internals.Holders.DG_Holders;
with AMF.Internals.Tables.DD_Element_Table;
with AMF.Internals.Tables.DD_Types;
with AMF.Internals.Tables.DG_Metamodel;
with AMF.Real_Collections.Internals;
with League.Holders.Booleans;

package body AMF.Internals.Tables.DD_Reflection is

   ---------
   -- Get --
   ---------

   function Get
    (Self     : AMF.Internals.AMF_Element;
     Property : CMOF_Element) return League.Holders.Holder
   is

      function DG_Canvas_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Canvas class.

      function DG_Circle_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Circle class.

      function DG_Clip_Path_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of ClipPath class.

      function DG_Ellipse_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Ellipse class.

      function DG_Group_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Group class.

      function DG_Image_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Image class.

      function DG_Line_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Line class.

      function DG_Linear_Gradient_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of LinearGradient class.

      function DG_Marked_Element_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of MarkedElement class.

      function DG_Marker_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Marker class.

      function DG_Path_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Path class.

      function DG_Pattern_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Pattern class.

      function DG_Polygon_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Polygon class.

      function DG_Polyline_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Polyline class.

      function DG_Radial_Gradient_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of RadialGradient class.

      function DG_Rectangle_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Rectangle class.

      function DG_Style_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Style class.

      function DG_Text_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Text class.

      -------------------
      -- DG_Canvas_Get --
      -------------------

      function DG_Canvas_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Background_Color then
            --  Canvas::backgroundColor : Color

            return
              AMF.DC.Holders.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Background_Color);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Background_Fill_A_Canvas then
            --  Canvas::backgroundFill : Fill

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Fills.DG_Fill_Access'
                 (AMF.DG.Canvases.DG_Canvas_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Background_Fill));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Canvases.DG_Canvas_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Canvases.DG_Canvas_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Group_Member_Graphical_Element_Group then
            --  Group::member : GraphicalElement

            return
              AMF.DG.Graphical_Elements.Collections.DG_Graphical_Element_Collections.Internals.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Packaged_Fill_Fill_Canvas then
            --  Canvas::packagedFill : Fill

            return
              AMF.DG.Fills.Collections.DG_Fill_Collections.Internals.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Packaged_Fill);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Packaged_Marker_Marker_Canvas then
            --  Canvas::packagedMarker : Marker

            return
              AMF.DG.Markers.Collections.DG_Marker_Collections.Internals.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Packaged_Marker);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Packaged_Style_A_Canvas then
            --  Canvas::packagedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Packaged_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Canvas_Get;

      -------------------
      -- DG_Circle_Get --
      -------------------

      function DG_Circle_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Circle_Center then
            --  Circle::center : Point

            return
              AMF.DC.Holders.Points.To_Holder
               (AMF.DG.Circles.DG_Circle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Center);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Circles.DG_Circle_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Circles.DG_Circle_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Circles.DG_Circle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Circle_Radius then
            --  Circle::radius : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Circles.DG_Circle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Radius);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Circles.DG_Circle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Circles.DG_Circle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Circle_Get;

      ----------------------
      -- DG_Clip_Path_Get --
      ----------------------

      function DG_Clip_Path_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Clip_Paths.DG_Clip_Path_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Clip_Path_Clipped_Element_Graphical_Element_Clip_Path then
            --  ClipPath::clippedElement : GraphicalElement

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Graphical_Elements.DG_Graphical_Element_Access'
                 (AMF.DG.Clip_Paths.DG_Clip_Path_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clipped_Element));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Clip_Paths.DG_Clip_Path_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Group_Member_Graphical_Element_Group then
            --  Group::member : GraphicalElement

            return
              AMF.DG.Graphical_Elements.Collections.DG_Graphical_Element_Collections.Internals.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Clip_Path_Get;

      --------------------
      -- DG_Ellipse_Get --
      --------------------

      function DG_Ellipse_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Ellipse_Center then
            --  Ellipse::center : Point

            return
              AMF.DC.Holders.Points.To_Holder
               (AMF.DG.Ellipses.DG_Ellipse_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Center);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Ellipses.DG_Ellipse_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Ellipses.DG_Ellipse_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Ellipses.DG_Ellipse_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Ellipse_Radii then
            --  Ellipse::radii : Dimension

            return
              AMF.DC.Holders.Dimensions.To_Holder
               (AMF.DG.Ellipses.DG_Ellipse_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Radii);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Ellipses.DG_Ellipse_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Ellipses.DG_Ellipse_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Ellipse_Get;

      ------------------
      -- DG_Group_Get --
      ------------------

      function DG_Group_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Groups.DG_Group_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Groups.DG_Group_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Groups.DG_Group_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Group_Member_Graphical_Element_Group then
            --  Group::member : GraphicalElement

            return
              AMF.DG.Graphical_Elements.Collections.DG_Graphical_Element_Collections.Internals.To_Holder
               (AMF.DG.Groups.DG_Group_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Groups.DG_Group_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Groups.DG_Group_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Group_Get;

      ------------------
      -- DG_Image_Get --
      ------------------

      function DG_Image_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Bounds then
            --  Image::bounds : Bounds

            return
              AMF.DC.Holders.Bounds.To_Holder
               (AMF.DG.Images.DG_Image_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Bounds);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Images.DG_Image_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Images.DG_Image_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Is_Aspect_Ratio_Preserved then
            --  Image::isAspectRatioPreserved : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.DG.Images.DG_Image_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Aspect_Ratio_Preserved);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Images.DG_Image_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Images.DG_Image_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Source then
            --  Image::source : String

            return
              League.Holders.To_Holder
               (AMF.DG.Images.DG_Image_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Source);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Images.DG_Image_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Image_Get;

      -----------------
      -- DG_Line_Get --
      -----------------

      function DG_Line_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Lines.DG_Line_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Line_End then
            --  Line::end : Point

            return
              AMF.DC.Holders.Points.To_Holder
               (AMF.DG.Lines.DG_Line_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_End);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Lines.DG_Line_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_End_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Lines.DG_Line_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Lines.DG_Line_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Lines.DG_Line_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Mid_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Lines.DG_Line_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Line_Start then
            --  Line::start : Point

            return
              AMF.DC.Holders.Points.To_Holder
               (AMF.DG.Lines.DG_Line_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Start);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Lines.DG_Line_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Start_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Lines.DG_Line_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Line_Get;

      ----------------------------
      -- DG_Linear_Gradient_Get --
      ----------------------------

      function DG_Linear_Gradient_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Canvas_Canvas_Packaged_Fill then
            --  Fill::canvas : Canvas

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access'
                 (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Canvas));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Gradient_Stop then
            --  Gradient::stop : GradientStop

            return
              AMF.DG.Gradient_Stop_Collections.Internals.To_Holder
               (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Stop);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Transform then
            --  Fill::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_X1 then
            --  LinearGradient::x1 : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_X1);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_X2 then
            --  LinearGradient::x2 : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_X2);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_Y1 then
            --  LinearGradient::y1 : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Y1);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_Y2 then
            --  LinearGradient::y2 : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Y2);

         else
            raise Program_Error;
         end if;
      end DG_Linear_Gradient_Get;

      ---------------------------
      -- DG_Marked_Element_Get --
      ---------------------------

      function DG_Marked_Element_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Marked_Elements.DG_Marked_Element_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Marked_Elements.DG_Marked_Element_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_End_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Marked_Elements.DG_Marked_Element_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Marked_Elements.DG_Marked_Element_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Marked_Elements.DG_Marked_Element_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Mid_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Marked_Elements.DG_Marked_Element_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Marked_Elements.DG_Marked_Element_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Start_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Marked_Elements.DG_Marked_Element_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Marked_Element_Get;

      -------------------
      -- DG_Marker_Get --
      -------------------

      function DG_Marker_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marker_Canvas_Canvas_Packaged_Marker then
            --  Marker::canvas : Canvas

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access'
                 (AMF.DG.Markers.DG_Marker_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Canvas));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Markers.DG_Marker_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Markers.DG_Marker_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Markers.DG_Marker_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Group_Member_Graphical_Element_Group then
            --  Group::member : GraphicalElement

            return
              AMF.DG.Graphical_Elements.Collections.DG_Graphical_Element_Collections.Internals.To_Holder
               (AMF.DG.Markers.DG_Marker_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marker_Reference then
            --  Marker::reference : Point

            return
              AMF.DC.Holders.Points.To_Holder
               (AMF.DG.Markers.DG_Marker_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Reference);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Markers.DG_Marker_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marker_Size then
            --  Marker::size : Dimension

            return
              AMF.DC.Holders.Dimensions.To_Holder
               (AMF.DG.Markers.DG_Marker_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Size);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Markers.DG_Marker_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Marker_Get;

      -----------------
      -- DG_Path_Get --
      -----------------

      function DG_Path_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Paths.DG_Path_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Path_Command then
            --  Path::command : PathCommand

            return
              AMF.DG.Path_Command_Collections.Internals.To_Holder
               (AMF.DG.Paths.DG_Path_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Command);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Paths.DG_Path_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_End_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Paths.DG_Path_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Paths.DG_Path_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Paths.DG_Path_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Mid_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Paths.DG_Path_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Paths.DG_Path_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Start_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Paths.DG_Path_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Path_Get;

      --------------------
      -- DG_Pattern_Get --
      --------------------

      function DG_Pattern_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Pattern_Bounds then
            --  Pattern::bounds : Bounds

            return
              AMF.DC.Holders.Bounds.To_Holder
               (AMF.DG.Patterns.DG_Pattern_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Bounds);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Canvas_Canvas_Packaged_Fill then
            --  Fill::canvas : Canvas

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access'
                 (AMF.DG.Patterns.DG_Pattern_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Canvas));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Pattern_Tile_A_Pattern then
            --  Pattern::tile : GraphicalElement

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Graphical_Elements.DG_Graphical_Element_Access'
                 (AMF.DG.Patterns.DG_Pattern_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Tile));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Transform then
            --  Fill::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Patterns.DG_Pattern_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Pattern_Get;

      --------------------
      -- DG_Polygon_Get --
      --------------------

      function DG_Polygon_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Polygons.DG_Polygon_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Polygons.DG_Polygon_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_End_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Polygons.DG_Polygon_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Polygons.DG_Polygon_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Polygons.DG_Polygon_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Mid_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Polygon_Point then
            --  Polygon::point : Point

            return
              AMF.DC.Point_Collections.Internals.To_Holder
               (AMF.DG.Polygons.DG_Polygon_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Point);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Polygons.DG_Polygon_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Polygons.DG_Polygon_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Start_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Polygons.DG_Polygon_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Polygon_Get;

      ---------------------
      -- DG_Polyline_Get --
      ---------------------

      function DG_Polyline_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Polylines.DG_Polyline_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Polylines.DG_Polyline_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_End_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Polylines.DG_Polyline_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Polylines.DG_Polyline_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Polylines.DG_Polyline_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Mid_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Polyline_Point then
            --  Polyline::point : Point

            return
              AMF.DC.Point_Collections.Internals.To_Holder
               (AMF.DG.Polylines.DG_Polyline_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Point);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Polylines.DG_Polyline_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Markers.DG_Marker_Access'
                 (AMF.DG.Polylines.DG_Polyline_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Start_Marker));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Polylines.DG_Polyline_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Polyline_Get;

      ----------------------------
      -- DG_Radial_Gradient_Get --
      ----------------------------

      function DG_Radial_Gradient_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Canvas_Canvas_Packaged_Fill then
            --  Fill::canvas : Canvas

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Canvases.DG_Canvas_Access'
                 (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Canvas));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Center_X then
            --  RadialGradient::centerX : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Center_X);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Center_Y then
            --  RadialGradient::centerY : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Center_Y);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Focus_X then
            --  RadialGradient::focusX : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Focus_X);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Focus_Y then
            --  RadialGradient::focusY : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Focus_Y);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Radius then
            --  RadialGradient::radius : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Radius);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Gradient_Stop then
            --  Gradient::stop : GradientStop

            return
              AMF.DG.Gradient_Stop_Collections.Internals.To_Holder
               (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Stop);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Transform then
            --  Fill::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Radial_Gradient_Get;

      ----------------------
      -- DG_Rectangle_Get --
      ----------------------

      function DG_Rectangle_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Rectangle_Bounds then
            --  Rectangle::bounds : Bounds

            return
              AMF.DC.Holders.Bounds.To_Holder
               (AMF.DG.Rectangles.DG_Rectangle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Bounds);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Rectangles.DG_Rectangle_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Rectangle_Corner_Radius then
            --  Rectangle::cornerRadius : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.DG.Rectangles.DG_Rectangle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Corner_Radius);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Rectangles.DG_Rectangle_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Rectangles.DG_Rectangle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Rectangles.DG_Rectangle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Rectangles.DG_Rectangle_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Rectangle_Get;

      ------------------
      -- DG_Style_Get --
      ------------------

      function DG_Style_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Fill_A_Style then
            --  Style::fill : Fill

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Fills.DG_Fill_Access'
                 (AMF.DG.Styles.DG_Style_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Fill));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Fill_Color then
            --  Style::fillColor : Color

            return
              AMF.DC.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Fill_Color);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Fill_Opacity then
            --  Style::fillOpacity : Real

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Fill_Opacity);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Bold then
            --  Style::fontBold : Boolean

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Font_Bold);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Color then
            --  Style::fontColor : Color

            return
              AMF.DC.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Font_Color);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Italic then
            --  Style::fontItalic : Boolean

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Font_Italic);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Name then
            --  Style::fontName : String

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Font_Name);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Size then
            --  Style::fontSize : Real

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Font_Size);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Strike_Through then
            --  Style::fontStrikeThrough : Boolean

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Font_Strike_Through);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Underline then
            --  Style::fontUnderline : Boolean

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Font_Underline);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Color then
            --  Style::strokeColor : Color

            return
              AMF.DC.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Stroke_Color);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Dash_Length then
            --  Style::strokeDashLength : Real

            return
              AMF.Real_Collections.Internals.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Stroke_Dash_Length);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Opacity then
            --  Style::strokeOpacity : Real

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Stroke_Opacity);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Width then
            --  Style::strokeWidth : Real

            return
              AMF.Holders.To_Holder
               (AMF.DG.Styles.DG_Style_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Stroke_Width);

         else
            raise Program_Error;
         end if;
      end DG_Style_Get;

      -----------------
      -- DG_Text_Get --
      -----------------

      function DG_Text_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Text_Alignment then
            --  Text::alignment : AlignmentKind

            return
              AMF.DC.Holders.Alignment_Kinds.To_Holder
               (AMF.DG.Texts.DG_Text_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Alignment);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Text_Bounds then
            --  Text::bounds : Bounds

            return
              AMF.DC.Holders.Bounds.To_Holder
               (AMF.DG.Texts.DG_Text_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Bounds);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access'
                 (AMF.DG.Texts.DG_Text_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Clip_Path));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Text_Data then
            --  Text::data : String

            return
              League.Holders.To_Holder
               (AMF.DG.Texts.DG_Text_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Data);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            return
              AMF.Internals.Holders.DG_Holders.To_Holder
               (AMF.DG.Groups.DG_Group_Access'
                 (AMF.DG.Texts.DG_Text_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Group));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element then
            --  GraphicalElement::localStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Texts.DG_Text_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Local_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element then
            --  GraphicalElement::sharedStyle : Style

            return
              AMF.DG.Styles.Collections.DG_Style_Collections.Internals.To_Holder
               (AMF.DG.Texts.DG_Text_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Shared_Style);

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Transform then
            --  GraphicalElement::transform : Transform

            return
              AMF.DG.Transform_Collections.Internals.To_Holder
               (AMF.DG.Texts.DG_Text_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Transform);

         else
            raise Program_Error;
         end if;
      end DG_Text_Get;

   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return DG_Canvas_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            return DG_Circle_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            return DG_Clip_Path_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            return DG_Ellipse_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            return DG_Group_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            return DG_Image_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return DG_Line_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Linear_Gradient =>
            return DG_Linear_Gradient_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return DG_Marked_Element_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            return DG_Marker_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return DG_Path_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
            return DG_Pattern_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return DG_Polygon_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return DG_Polyline_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Radial_Gradient =>
            return DG_Radial_Gradient_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            return DG_Rectangle_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Style =>
            return DG_Style_Get;

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            return DG_Text_Get;
      end case;
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class
    (Self : AMF.Internals.AMF_Element) return CMOF_Element is
   begin
      case DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_None =>
            return 0;

         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Canvas;

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Circle;

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Clip_Path;

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Ellipse;

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Group;

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Image;

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Line;

         when AMF.Internals.Tables.DD_Types.E_DG_Linear_Gradient =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Linear_Gradient;

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Marked_Element;

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Marker;

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Path;

         when AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Pattern;

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Polygon;

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Polyline;

         when AMF.Internals.Tables.DD_Types.E_DG_Radial_Gradient =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Radial_Gradient;

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Rectangle;

         when AMF.Internals.Tables.DD_Types.E_DG_Style =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Style;

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            return AMF.Internals.Tables.DG_Metamodel.MC_DG_Text;
      end case;
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : AMF.Internals.AMF_Element;
     Property : CMOF_Element;
     Value    : League.Holders.Holder)
   is

      procedure DG_Canvas_Set;
      --  Sets attribute's value of instance of Canvas class.

      procedure DG_Circle_Set;
      --  Sets attribute's value of instance of Circle class.

      procedure DG_Clip_Path_Set;
      --  Sets attribute's value of instance of ClipPath class.

      procedure DG_Ellipse_Set;
      --  Sets attribute's value of instance of Ellipse class.

      procedure DG_Group_Set;
      --  Sets attribute's value of instance of Group class.

      procedure DG_Image_Set;
      --  Sets attribute's value of instance of Image class.

      procedure DG_Line_Set;
      --  Sets attribute's value of instance of Line class.

      procedure DG_Linear_Gradient_Set;
      --  Sets attribute's value of instance of LinearGradient class.

      procedure DG_Marked_Element_Set;
      --  Sets attribute's value of instance of MarkedElement class.

      procedure DG_Marker_Set;
      --  Sets attribute's value of instance of Marker class.

      procedure DG_Path_Set;
      --  Sets attribute's value of instance of Path class.

      procedure DG_Pattern_Set;
      --  Sets attribute's value of instance of Pattern class.

      procedure DG_Polygon_Set;
      --  Sets attribute's value of instance of Polygon class.

      procedure DG_Polyline_Set;
      --  Sets attribute's value of instance of Polyline class.

      procedure DG_Radial_Gradient_Set;
      --  Sets attribute's value of instance of RadialGradient class.

      procedure DG_Rectangle_Set;
      --  Sets attribute's value of instance of Rectangle class.

      procedure DG_Style_Set;
      --  Sets attribute's value of instance of Style class.

      procedure DG_Text_Set;
      --  Sets attribute's value of instance of Text class.

      -------------------
      -- DG_Canvas_Set --
      -------------------

      procedure DG_Canvas_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Background_Color then
            --  Canvas::backgroundColor : Color

            AMF.DG.Canvases.DG_Canvas_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Background_Color
               (AMF.DC.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Background_Fill_A_Canvas then
            --  Canvas::backgroundFill : Fill

            AMF.DG.Canvases.DG_Canvas_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Background_Fill
               (AMF.DG.Fills.DG_Fill_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Canvases.DG_Canvas_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Canvases.DG_Canvas_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Canvas_Set;

      -------------------
      -- DG_Circle_Set --
      -------------------

      procedure DG_Circle_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Circle_Center then
            --  Circle::center : Point

            AMF.DG.Circles.DG_Circle_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Center
               (AMF.DC.Holders.Points.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Circles.DG_Circle_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Circles.DG_Circle_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Circle_Radius then
            --  Circle::radius : Real

            AMF.DG.Circles.DG_Circle_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Radius
               (AMF.Holders.Reals.Element (Value));

         else
            raise Program_Error;
         end if;
      end DG_Circle_Set;

      ----------------------
      -- DG_Clip_Path_Set --
      ----------------------

      procedure DG_Clip_Path_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Clip_Paths.DG_Clip_Path_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Clip_Path_Clipped_Element_Graphical_Element_Clip_Path then
            --  ClipPath::clippedElement : GraphicalElement

            AMF.DG.Clip_Paths.DG_Clip_Path_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clipped_Element
               (AMF.DG.Graphical_Elements.DG_Graphical_Element_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Clip_Paths.DG_Clip_Path_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Clip_Path_Set;

      --------------------
      -- DG_Ellipse_Set --
      --------------------

      procedure DG_Ellipse_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Ellipse_Center then
            --  Ellipse::center : Point

            AMF.DG.Ellipses.DG_Ellipse_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Center
               (AMF.DC.Holders.Points.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Ellipses.DG_Ellipse_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Ellipses.DG_Ellipse_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Ellipse_Radii then
            --  Ellipse::radii : Dimension

            AMF.DG.Ellipses.DG_Ellipse_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Radii
               (AMF.DC.Holders.Dimensions.Element (Value));

         else
            raise Program_Error;
         end if;
      end DG_Ellipse_Set;

      ------------------
      -- DG_Group_Set --
      ------------------

      procedure DG_Group_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Groups.DG_Group_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Groups.DG_Group_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Group_Set;

      ------------------
      -- DG_Image_Set --
      ------------------

      procedure DG_Image_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Bounds then
            --  Image::bounds : Bounds

            AMF.DG.Images.DG_Image_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Bounds
               (AMF.DC.Holders.Bounds.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Images.DG_Image_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Images.DG_Image_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Is_Aspect_Ratio_Preserved then
            --  Image::isAspectRatioPreserved : Boolean

            AMF.DG.Images.DG_Image_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Aspect_Ratio_Preserved
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Source then
            --  Image::source : String

            AMF.DG.Images.DG_Image_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (League.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end DG_Image_Set;

      -----------------
      -- DG_Line_Set --
      -----------------

      procedure DG_Line_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Lines.DG_Line_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Line_End then
            --  Line::end : Point

            AMF.DG.Lines.DG_Line_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_End
               (AMF.DC.Holders.Points.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            AMF.DG.Lines.DG_Line_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_End_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Lines.DG_Line_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            AMF.DG.Lines.DG_Line_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Mid_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Line_Start then
            --  Line::start : Point

            AMF.DG.Lines.DG_Line_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Start
               (AMF.DC.Holders.Points.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            AMF.DG.Lines.DG_Line_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Start_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Line_Set;

      ----------------------------
      -- DG_Linear_Gradient_Set --
      ----------------------------

      procedure DG_Linear_Gradient_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Canvas_Canvas_Packaged_Fill then
            --  Fill::canvas : Canvas

            AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Canvas
               (AMF.DG.Canvases.DG_Canvas_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_X1 then
            --  LinearGradient::x1 : Real

            AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_X1
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_X2 then
            --  LinearGradient::x2 : Real

            AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_X2
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_Y1 then
            --  LinearGradient::y1 : Real

            AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Y1
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_Y2 then
            --  LinearGradient::y2 : Real

            AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Y2
               (AMF.Holders.Reals.Element (Value));

         else
            raise Program_Error;
         end if;
      end DG_Linear_Gradient_Set;

      ---------------------------
      -- DG_Marked_Element_Set --
      ---------------------------

      procedure DG_Marked_Element_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Marked_Elements.DG_Marked_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            AMF.DG.Marked_Elements.DG_Marked_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_End_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Marked_Elements.DG_Marked_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            AMF.DG.Marked_Elements.DG_Marked_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Mid_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            AMF.DG.Marked_Elements.DG_Marked_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Start_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Marked_Element_Set;

      -------------------
      -- DG_Marker_Set --
      -------------------

      procedure DG_Marker_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marker_Canvas_Canvas_Packaged_Marker then
            --  Marker::canvas : Canvas

            AMF.DG.Markers.DG_Marker_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Canvas
               (AMF.DG.Canvases.DG_Canvas_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Markers.DG_Marker_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Markers.DG_Marker_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marker_Reference then
            --  Marker::reference : Point

            AMF.DG.Markers.DG_Marker_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Reference
               (AMF.DC.Holders.Points.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marker_Size then
            --  Marker::size : Dimension

            AMF.DG.Markers.DG_Marker_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Size
               (AMF.DC.Holders.Dimensions.Element (Value));

         else
            raise Program_Error;
         end if;
      end DG_Marker_Set;

      -----------------
      -- DG_Path_Set --
      -----------------

      procedure DG_Path_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Paths.DG_Path_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            AMF.DG.Paths.DG_Path_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_End_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Paths.DG_Path_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            AMF.DG.Paths.DG_Path_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Mid_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            AMF.DG.Paths.DG_Path_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Start_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Path_Set;

      --------------------
      -- DG_Pattern_Set --
      --------------------

      procedure DG_Pattern_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Pattern_Bounds then
            --  Pattern::bounds : Bounds

            AMF.DG.Patterns.DG_Pattern_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Bounds
               (AMF.DC.Holders.Bounds.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Canvas_Canvas_Packaged_Fill then
            --  Fill::canvas : Canvas

            AMF.DG.Patterns.DG_Pattern_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Canvas
               (AMF.DG.Canvases.DG_Canvas_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Pattern_Tile_A_Pattern then
            --  Pattern::tile : GraphicalElement

            AMF.DG.Patterns.DG_Pattern_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Tile
               (AMF.DG.Graphical_Elements.DG_Graphical_Element_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Pattern_Set;

      --------------------
      -- DG_Polygon_Set --
      --------------------

      procedure DG_Polygon_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Polygons.DG_Polygon_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            AMF.DG.Polygons.DG_Polygon_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_End_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Polygons.DG_Polygon_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            AMF.DG.Polygons.DG_Polygon_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Mid_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            AMF.DG.Polygons.DG_Polygon_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Start_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Polygon_Set;

      ---------------------
      -- DG_Polyline_Set --
      ---------------------

      procedure DG_Polyline_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Polylines.DG_Polyline_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_End_Marker_A_Marked_Element then
            --  MarkedElement::endMarker : Marker

            AMF.DG.Polylines.DG_Polyline_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_End_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Polylines.DG_Polyline_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Mid_Marker_A_Marked_Element then
            --  MarkedElement::midMarker : Marker

            AMF.DG.Polylines.DG_Polyline_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Mid_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Marked_Element_Start_Marker_A_Marked_Element then
            --  MarkedElement::startMarker : Marker

            AMF.DG.Polylines.DG_Polyline_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Start_Marker
               (AMF.DG.Markers.DG_Marker_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Polyline_Set;

      ----------------------------
      -- DG_Radial_Gradient_Set --
      ----------------------------

      procedure DG_Radial_Gradient_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Fill_Canvas_Canvas_Packaged_Fill then
            --  Fill::canvas : Canvas

            AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Canvas
               (AMF.DG.Canvases.DG_Canvas_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Center_X then
            --  RadialGradient::centerX : Real

            AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Center_X
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Center_Y then
            --  RadialGradient::centerY : Real

            AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Center_Y
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Focus_X then
            --  RadialGradient::focusX : Real

            AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Focus_X
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Focus_Y then
            --  RadialGradient::focusY : Real

            AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Focus_Y
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Radius then
            --  RadialGradient::radius : Real

            AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Radius
               (AMF.Holders.Reals.Element (Value));

         else
            raise Program_Error;
         end if;
      end DG_Radial_Gradient_Set;

      ----------------------
      -- DG_Rectangle_Set --
      ----------------------

      procedure DG_Rectangle_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Rectangle_Bounds then
            --  Rectangle::bounds : Bounds

            AMF.DG.Rectangles.DG_Rectangle_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Bounds
               (AMF.DC.Holders.Bounds.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Rectangles.DG_Rectangle_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Rectangle_Corner_Radius then
            --  Rectangle::cornerRadius : Real

            AMF.DG.Rectangles.DG_Rectangle_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Corner_Radius
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Rectangles.DG_Rectangle_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Rectangle_Set;

      ------------------
      -- DG_Style_Set --
      ------------------

      procedure DG_Style_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Fill_A_Style then
            --  Style::fill : Fill

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Fill
               (AMF.DG.Fills.DG_Fill_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Fill_Color then
            --  Style::fillColor : Color

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Fill_Color
               (AMF.DC.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Fill_Opacity then
            --  Style::fillOpacity : Real

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Fill_Opacity
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Bold then
            --  Style::fontBold : Boolean

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Font_Bold
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Color then
            --  Style::fontColor : Color

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Font_Color
               (AMF.DC.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Italic then
            --  Style::fontItalic : Boolean

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Font_Italic
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Name then
            --  Style::fontName : String

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Font_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Size then
            --  Style::fontSize : Real

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Font_Size
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Strike_Through then
            --  Style::fontStrikeThrough : Boolean

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Font_Strike_Through
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Underline then
            --  Style::fontUnderline : Boolean

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Font_Underline
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Color then
            --  Style::strokeColor : Color

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Stroke_Color
               (AMF.DC.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Opacity then
            --  Style::strokeOpacity : Real

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Stroke_Opacity
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Width then
            --  Style::strokeWidth : Real

            AMF.DG.Styles.DG_Style_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Stroke_Width
               (AMF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end DG_Style_Set;

      -----------------
      -- DG_Text_Set --
      -----------------

      procedure DG_Text_Set is
      begin
         if Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Text_Alignment then
            --  Text::alignment : AlignmentKind

            AMF.DG.Texts.DG_Text_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Alignment
               (AMF.DC.Holders.Alignment_Kinds.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Text_Bounds then
            --  Text::bounds : Bounds

            AMF.DG.Texts.DG_Text_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Bounds
               (AMF.DC.Holders.Bounds.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Clip_Path_Clip_Path_Clipped_Element then
            --  GraphicalElement::clipPath : ClipPath

            AMF.DG.Texts.DG_Text_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Clip_Path
               (AMF.DG.Clip_Paths.DG_Clip_Path_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Text_Data then
            --  Text::data : String

            AMF.DG.Texts.DG_Text_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Data
               (League.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Group_Group_Member then
            --  GraphicalElement::group : Group

            AMF.DG.Texts.DG_Text_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Group
               (AMF.DG.Groups.DG_Group_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end DG_Text_Set;
   begin
      case DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            DG_Canvas_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            DG_Circle_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            DG_Clip_Path_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            DG_Ellipse_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            DG_Group_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            DG_Image_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            DG_Line_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Linear_Gradient =>
            DG_Linear_Gradient_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            DG_Marked_Element_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            DG_Marker_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            DG_Path_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
            DG_Pattern_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            DG_Polygon_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            DG_Polyline_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Radial_Gradient =>
            DG_Radial_Gradient_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            DG_Rectangle_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Style =>
            DG_Style_Set;

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            DG_Text_Set;
      end case;
   end Set;

end AMF.Internals.Tables.DD_Reflection;
