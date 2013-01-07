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
with AMF.DC;
with AMF.Internals.DG_Canvases;
with AMF.Internals.DG_Circles;
with AMF.Internals.DG_Clip_Paths;
with AMF.Internals.DG_Ellipses;
with AMF.Internals.DG_Groups;
with AMF.Internals.DG_Images;
with AMF.Internals.DG_Linear_Gradients;
with AMF.Internals.DG_Lines;
with AMF.Internals.DG_Marked_Elements;
with AMF.Internals.DG_Markers;
with AMF.Internals.DG_Paths;
with AMF.Internals.DG_Patterns;
with AMF.Internals.DG_Polygons;
with AMF.Internals.DG_Polylines;
with AMF.Internals.DG_Radial_Gradients;
with AMF.Internals.DG_Rectangles;
with AMF.Internals.DG_Styles;
with AMF.Internals.DG_Texts;
with AMF.Internals.Element_Collections;
with AMF.Internals.Tables.DD_Element_Table;
with AMF.Internals.Tables.DD_Types;
with AMF.Internals.Tables.DG_Metamodel;
with Matreshka.Internals.Strings;

package body AMF.Internals.Tables.DD_Constructors is

   use AMF.Internals.Tables;
   use type AMF.Internals.AMF_Collection_Of_Element;

   ----------------------
   -- Create_DG_Canvas --
   ----------------------

   function Create_DG_Canvas return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Canvas,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Canvases.DG_Canvas_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          5      => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Color, (Is_Empty => True)),
                       --  backgroundColor
          4      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  backgroundFill
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  member

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Group_Member_Graphical_Element_Group,
        DD_Element_Table.Table (Self).Member (0).Collection + 3);

      --  packagedFill

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Packaged_Fill_Fill_Canvas,
        DD_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packagedMarker

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Packaged_Marker_Marker_Canvas,
        DD_Element_Table.Table (Self).Member (0).Collection + 5);

      --  packagedStyle

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Packaged_Style_A_Canvas,
        DD_Element_Table.Table (Self).Member (0).Collection + 6);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Canvas;

   ----------------------
   -- Create_DG_Circle --
   ----------------------

   function Create_DG_Circle return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Circle,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Circles.DG_Circle_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          5      => (AMF.Internals.Tables.DD_Types.M_Point, (others => <>)),
                       --  center
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          4      => (AMF.Internals.Tables.DD_Types.M_Real, 0.0),
                       --  radius
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Circle;

   -------------------------
   -- Create_DG_Clip_Path --
   -------------------------

   function Create_DG_Clip_Path return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Clip_Path,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Clip_Paths.DG_Clip_Path_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          4      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clippedElement
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  member

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Group_Member_Graphical_Element_Group,
        DD_Element_Table.Table (Self).Member (0).Collection + 3);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Clip_Path;

   -----------------------
   -- Create_DG_Ellipse --
   -----------------------

   function Create_DG_Ellipse return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Ellipse,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Ellipses.DG_Ellipse_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          5      => (AMF.Internals.Tables.DD_Types.M_Point, (others => <>)),
                       --  center
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          4      => (AMF.Internals.Tables.DD_Types.M_Dimension, (others => <>)),
                       --  radii
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Ellipse;

   ---------------------
   -- Create_DG_Group --
   ---------------------

   function Create_DG_Group return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Group,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Groups.DG_Group_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  member

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Group_Member_Graphical_Element_Group,
        DD_Element_Table.Table (Self).Member (0).Collection + 3);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Group;

   ---------------------
   -- Create_DG_Image --
   ---------------------

   function Create_DG_Image return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Image,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Images.DG_Image_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          4      => (AMF.Internals.Tables.DD_Types.M_Bounds, (others => <>)),
                       --  bounds
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          6      => (AMF.Internals.Tables.DD_Types.M_Boolean, False),
                       --  isAspectRatioPreserved
          5      => (AMF.Internals.Tables.DD_Types.M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                       --  source
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Image;

   --------------------
   -- Create_DG_Line --
   --------------------

   function Create_DG_Line return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Line,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Lines.DG_Line_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          8      => (AMF.Internals.Tables.DD_Types.M_Point, (others => <>)),
                       --  end
          5      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  endMarker
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          6      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  midMarker
          7      => (AMF.Internals.Tables.DD_Types.M_Point, (others => <>)),
                       --  start
          4      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  startMarker
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Line;

   -------------------------------
   -- Create_DG_Linear_Gradient --
   -------------------------------

   function Create_DG_Linear_Gradient return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Linear_Gradient,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Linear_Gradients.DG_Linear_Gradient_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  canvas
          3      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Gradient_Stop, 0),
                       --  stop
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          4      => (AMF.Internals.Tables.DD_Types.M_Real, 0.00000000000000E+00),
                       --  x1
          5      => (AMF.Internals.Tables.DD_Types.M_Real, 1.00000000000000E+00),
                       --  x2
          6      => (AMF.Internals.Tables.DD_Types.M_Real, 0.00000000000000E+00),
                       --  y1
          7      => (AMF.Internals.Tables.DD_Types.M_Real, 1.00000000000000E+00),
                       --  y2
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      return Self;
   end Create_DG_Linear_Gradient;

   ------------------------------
   -- Create_DG_Marked_Element --
   ------------------------------

   function Create_DG_Marked_Element return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Marked_Element,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Marked_Elements.DG_Marked_Element_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          5      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  endMarker
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          6      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  midMarker
          4      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  startMarker
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Marked_Element;

   ----------------------
   -- Create_DG_Marker --
   ----------------------

   function Create_DG_Marker return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Marker,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Markers.DG_Marker_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          4      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  canvas
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          6      => (AMF.Internals.Tables.DD_Types.M_Point, (others => <>)),
                       --  reference
          5      => (AMF.Internals.Tables.DD_Types.M_Dimension, (others => <>)),
                       --  size
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  member

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Group_Member_Graphical_Element_Group,
        DD_Element_Table.Table (Self).Member (0).Collection + 3);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Marker;

   --------------------
   -- Create_DG_Path --
   --------------------

   function Create_DG_Path return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Path,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Paths.DG_Path_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          7      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Path_Command, 0),
                       --  command
          5      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  endMarker
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          6      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  midMarker
          4      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  startMarker
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Path;

   -----------------------
   -- Create_DG_Pattern --
   -----------------------

   function Create_DG_Pattern return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Pattern,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Patterns.DG_Pattern_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          4      => (AMF.Internals.Tables.DD_Types.M_Bounds, (others => <>)),
                       --  bounds
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  canvas
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  tile
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      return Self;
   end Create_DG_Pattern;

   -----------------------
   -- Create_DG_Polygon --
   -----------------------

   function Create_DG_Polygon return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Polygon,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Polygons.DG_Polygon_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          5      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  endMarker
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          6      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  midMarker
          7      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Point, 0),
                       --  point
          4      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  startMarker
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Polygon;

   ------------------------
   -- Create_DG_Polyline --
   ------------------------

   function Create_DG_Polyline return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Polyline,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Polylines.DG_Polyline_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          5      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  endMarker
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          6      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  midMarker
          7      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Point, 0),
                       --  point
          4      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  startMarker
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Polyline;

   -------------------------------
   -- Create_DG_Radial_Gradient --
   -------------------------------

   function Create_DG_Radial_Gradient return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Radial_Gradient,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Radial_Gradients.DG_Radial_Gradient_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  canvas
          5      => (AMF.Internals.Tables.DD_Types.M_Real, 5.00000000000000E-01),
                       --  centerX
          6      => (AMF.Internals.Tables.DD_Types.M_Real, 5.00000000000000E-01),
                       --  centerY
          7      => (AMF.Internals.Tables.DD_Types.M_Real, 5.00000000000000E-01),
                       --  focusX
          8      => (AMF.Internals.Tables.DD_Types.M_Real, 5.00000000000000E-01),
                       --  focusY
          4      => (AMF.Internals.Tables.DD_Types.M_Real, 5.00000000000000E-01),
                       --  radius
          3      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Gradient_Stop, 0),
                       --  stop
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      return Self;
   end Create_DG_Radial_Gradient;

   -------------------------
   -- Create_DG_Rectangle --
   -------------------------

   function Create_DG_Rectangle return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Rectangle,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Rectangles.DG_Rectangle_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          4      => (AMF.Internals.Tables.DD_Types.M_Bounds, (others => <>)),
                       --  bounds
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          5      => (AMF.Internals.Tables.DD_Types.M_Real, 0.00000000000000E+00),
                       --  cornerRadius
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Rectangle;

   ---------------------
   -- Create_DG_Style --
   ---------------------

   function Create_DG_Style return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Style,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Styles.DG_Style_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          1      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  fill
          2      => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Color, (Is_Empty => True)),
                       --  fillColor
          3      => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Real, (Is_Empty => True)),
                       --  fillOpacity
          12     => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Boolean, (Is_Empty => True)),
                       --  fontBold
          10     => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Color, (Is_Empty => True)),
                       --  fontColor
          11     => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Boolean, (Is_Empty => True)),
                       --  fontItalic
          9      => (AMF.Internals.Tables.DD_Types.M_String, null),
                       --  fontName
          8      => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Real, (Is_Empty => True)),
                       --  fontSize
          14     => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Boolean, (Is_Empty => True)),
                       --  fontStrikeThrough
          13     => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Boolean, (Is_Empty => True)),
                       --  fontUnderline
          6      => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Color, (Is_Empty => True)),
                       --  strokeColor
          7      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Real, 0),
                       --  strokeDashLength
          5      => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Real, (Is_Empty => True)),
                       --  strokeOpacity
          4      => (AMF.Internals.Tables.DD_Types.M_Holder_Of_Real, (Is_Empty => True)),
                       --  strokeWidth
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      return Self;
   end Create_DG_Style;

   --------------------
   -- Create_DG_Text --
   --------------------

   function Create_DG_Text return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      DD_Element_Table.Increment_Last;
      Self := DD_Element_Table.Last;

      DD_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.DD_Types.E_DG_Text,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.DG_Texts.DG_Text_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.DD_Types.M_None),
          6      => (AMF.Internals.Tables.DD_Types.M_Alignment_Kind, AMF.DC.Align_Start),
                       --  alignment
          4      => (AMF.Internals.Tables.DD_Types.M_Bounds, (others => <>)),
                       --  bounds
          3      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  clipPath
          5      => (AMF.Internals.Tables.DD_Types.M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                       --  data
          2      => (AMF.Internals.Tables.DD_Types.M_Element, No_AMF_Link),
                       --  group
          1      => (AMF.Internals.Tables.DD_Types.M_Collection_Of_Transform, 0),
                       --  transform
          others => (Kind => AMF.Internals.Tables.DD_Types.M_None)));
      DD_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.DD_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  localStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Local_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 1);

      --  sharedStyle

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.DG_Metamodel.MP_DG_Graphical_Element_Shared_Style_A_Styled_Element,
        DD_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_DG_Text;

end AMF.Internals.Tables.DD_Constructors;
