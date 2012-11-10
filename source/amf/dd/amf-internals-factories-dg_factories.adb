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
with AMF.Internals.Elements;
with AMF.Internals.Extents;
with AMF.Internals.Helpers;
with AMF.Internals.Links;
with AMF.Internals.Listener_Registry;
with AMF.Internals.Tables.DD_Constructors;
with AMF.Internals.Tables.DG_Metamodel;

package body AMF.Internals.Factories.DG_Factories is

   -----------------
   -- Constructor --
   -----------------

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access is
   begin
      return new DG_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access DG_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String is
   begin
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Convert_To_String;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access DG_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Meta_Class.all).Element;
      Element : AMF.Internals.AMF_Element;

   begin
      if MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Canvas then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Canvas;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Circle then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Circle;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Clip_Path then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Clip_Path;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Ellipse then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Ellipse;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Group then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Group;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Image then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Image;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Line then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Line;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Linear_Gradient then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Linear_Gradient;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Marked_Element then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Marked_Element;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Marker then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Marker;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Path then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Path;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Pattern then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Pattern;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Polygon then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Polygon;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Polyline then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Polyline;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Radial_Gradient then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Radial_Gradient;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Rectangle then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Rectangle;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Style then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Style;

      elsif MC = AMF.Internals.Tables.DG_Metamodel.MC_DG_Text then
         Element := AMF.Internals.Tables.DD_Constructors.Create_DG_Text;

      else
         raise Program_Error;
      end if;

      AMF.Internals.Extents.Internal_Append (Self.Extent, Element);
      AMF.Internals.Listener_Registry.Notify_Instance_Create
       (AMF.Internals.Helpers.To_Element (Element));

      return AMF.Internals.Helpers.To_Element (Element);
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   overriding function Create_From_String
    (Self      : not null access DG_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder is
   begin
      raise Program_Error;
      return League.Holders.Empty_Holder;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   overriding function Create_Link
    (Self           : not null access DG_Factory;
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
       return not null AMF.Links.Link_Access
   is
      pragma Unreferenced (Self);

   begin
      return
        AMF.Internals.Links.Proxy
         (AMF.Internals.Links.Create_Link
           (AMF.Internals.Elements.Element_Base'Class
             (Association.all).Element,
            AMF.Internals.Helpers.To_Element (First_Element),
            AMF.Internals.Helpers.To_Element (Second_Element)));
   end Create_Link;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant DG_Factory)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package
   is
      pragma Unreferenced (Self);

   begin
      return Result : AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package do
         Result.Add (Get_Package);
      end return;
   end Get_Package;

   -----------------
   -- Get_Package --
   -----------------

   function Get_Package return not null AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.DG_Metamodel.MM_DG_DG));
   end Get_Package;

   -------------------
   -- Create_Canvas --
   -------------------

   overriding function Create_Canvas
    (Self : not null access DG_Factory)
       return AMF.DG.Canvases.DG_Canvas_Access is
   begin
      return
        AMF.DG.Canvases.DG_Canvas_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Canvas))));
   end Create_Canvas;

   -------------------
   -- Create_Circle --
   -------------------

   overriding function Create_Circle
    (Self : not null access DG_Factory)
       return AMF.DG.Circles.DG_Circle_Access is
   begin
      return
        AMF.DG.Circles.DG_Circle_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Circle))));
   end Create_Circle;

   ----------------------
   -- Create_Clip_Path --
   ----------------------

   overriding function Create_Clip_Path
    (Self : not null access DG_Factory)
       return AMF.DG.Clip_Paths.DG_Clip_Path_Access is
   begin
      return
        AMF.DG.Clip_Paths.DG_Clip_Path_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Clip_Path))));
   end Create_Clip_Path;

   --------------------
   -- Create_Ellipse --
   --------------------

   overriding function Create_Ellipse
    (Self : not null access DG_Factory)
       return AMF.DG.Ellipses.DG_Ellipse_Access is
   begin
      return
        AMF.DG.Ellipses.DG_Ellipse_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Ellipse))));
   end Create_Ellipse;

   ------------------
   -- Create_Group --
   ------------------

   overriding function Create_Group
    (Self : not null access DG_Factory)
       return AMF.DG.Groups.DG_Group_Access is
   begin
      return
        AMF.DG.Groups.DG_Group_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Group))));
   end Create_Group;

   ------------------
   -- Create_Image --
   ------------------

   overriding function Create_Image
    (Self : not null access DG_Factory)
       return AMF.DG.Images.DG_Image_Access is
   begin
      return
        AMF.DG.Images.DG_Image_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Image))));
   end Create_Image;

   -----------------
   -- Create_Line --
   -----------------

   overriding function Create_Line
    (Self : not null access DG_Factory)
       return AMF.DG.Lines.DG_Line_Access is
   begin
      return
        AMF.DG.Lines.DG_Line_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Line))));
   end Create_Line;

   ----------------------------
   -- Create_Linear_Gradient --
   ----------------------------

   overriding function Create_Linear_Gradient
    (Self : not null access DG_Factory)
       return AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access is
   begin
      return
        AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Linear_Gradient))));
   end Create_Linear_Gradient;

   ---------------------------
   -- Create_Marked_Element --
   ---------------------------

   overriding function Create_Marked_Element
    (Self : not null access DG_Factory)
       return AMF.DG.Marked_Elements.DG_Marked_Element_Access is
   begin
      return
        AMF.DG.Marked_Elements.DG_Marked_Element_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Marked_Element))));
   end Create_Marked_Element;

   -------------------
   -- Create_Marker --
   -------------------

   overriding function Create_Marker
    (Self : not null access DG_Factory)
       return AMF.DG.Markers.DG_Marker_Access is
   begin
      return
        AMF.DG.Markers.DG_Marker_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Marker))));
   end Create_Marker;

   -----------------
   -- Create_Path --
   -----------------

   overriding function Create_Path
    (Self : not null access DG_Factory)
       return AMF.DG.Paths.DG_Path_Access is
   begin
      return
        AMF.DG.Paths.DG_Path_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Path))));
   end Create_Path;

   --------------------
   -- Create_Pattern --
   --------------------

   overriding function Create_Pattern
    (Self : not null access DG_Factory)
       return AMF.DG.Patterns.DG_Pattern_Access is
   begin
      return
        AMF.DG.Patterns.DG_Pattern_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Pattern))));
   end Create_Pattern;

   --------------------
   -- Create_Polygon --
   --------------------

   overriding function Create_Polygon
    (Self : not null access DG_Factory)
       return AMF.DG.Polygons.DG_Polygon_Access is
   begin
      return
        AMF.DG.Polygons.DG_Polygon_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Polygon))));
   end Create_Polygon;

   ---------------------
   -- Create_Polyline --
   ---------------------

   overriding function Create_Polyline
    (Self : not null access DG_Factory)
       return AMF.DG.Polylines.DG_Polyline_Access is
   begin
      return
        AMF.DG.Polylines.DG_Polyline_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Polyline))));
   end Create_Polyline;

   ----------------------------
   -- Create_Radial_Gradient --
   ----------------------------

   overriding function Create_Radial_Gradient
    (Self : not null access DG_Factory)
       return AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access is
   begin
      return
        AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Radial_Gradient))));
   end Create_Radial_Gradient;

   ----------------------
   -- Create_Rectangle --
   ----------------------

   overriding function Create_Rectangle
    (Self : not null access DG_Factory)
       return AMF.DG.Rectangles.DG_Rectangle_Access is
   begin
      return
        AMF.DG.Rectangles.DG_Rectangle_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Rectangle))));
   end Create_Rectangle;

   ------------------
   -- Create_Style --
   ------------------

   overriding function Create_Style
    (Self : not null access DG_Factory)
       return AMF.DG.Styles.DG_Style_Access is
   begin
      return
        AMF.DG.Styles.DG_Style_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Style))));
   end Create_Style;

   -----------------
   -- Create_Text --
   -----------------

   overriding function Create_Text
    (Self : not null access DG_Factory)
       return AMF.DG.Texts.DG_Text_Access is
   begin
      return
        AMF.DG.Texts.DG_Text_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.DG_Metamodel.MC_DG_Text))));
   end Create_Text;

end AMF.Internals.Factories.DG_Factories;
