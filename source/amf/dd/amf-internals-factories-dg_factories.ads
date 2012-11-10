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
with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Data_Types;
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
with AMF.Factories.DG_Factories;
with AMF.Links;
with League.Holders;

package AMF.Internals.Factories.DG_Factories is

   type DG_Factory is
     limited new AMF.Internals.Factories.Metamodel_Factory_Base
       and AMF.Factories.DG_Factories.DG_Factory with null record;

   overriding function Convert_To_String
    (Self      : not null access DG_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String;

   overriding function Create
    (Self       : not null access DG_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access;

   overriding function Create_From_String
    (Self      : not null access DG_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder;

   overriding function Create_Link
    (Self           : not null access DG_Factory;
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
       return not null AMF.Links.Link_Access;

   overriding function Get_Package
    (Self : not null access constant DG_Factory)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package;

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access;

   function Get_Package return not null AMF.CMOF.Packages.CMOF_Package_Access;

   function Create_Canvas
    (Self : not null access DG_Factory)
       return AMF.DG.Canvases.DG_Canvas_Access;

   function Create_Circle
    (Self : not null access DG_Factory)
       return AMF.DG.Circles.DG_Circle_Access;

   function Create_Clip_Path
    (Self : not null access DG_Factory)
       return AMF.DG.Clip_Paths.DG_Clip_Path_Access;

   function Create_Ellipse
    (Self : not null access DG_Factory)
       return AMF.DG.Ellipses.DG_Ellipse_Access;

   function Create_Group
    (Self : not null access DG_Factory)
       return AMF.DG.Groups.DG_Group_Access;

   function Create_Image
    (Self : not null access DG_Factory)
       return AMF.DG.Images.DG_Image_Access;

   function Create_Line
    (Self : not null access DG_Factory)
       return AMF.DG.Lines.DG_Line_Access;

   function Create_Linear_Gradient
    (Self : not null access DG_Factory)
       return AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access;

   function Create_Marked_Element
    (Self : not null access DG_Factory)
       return AMF.DG.Marked_Elements.DG_Marked_Element_Access;

   function Create_Marker
    (Self : not null access DG_Factory)
       return AMF.DG.Markers.DG_Marker_Access;

   function Create_Path
    (Self : not null access DG_Factory)
       return AMF.DG.Paths.DG_Path_Access;

   function Create_Pattern
    (Self : not null access DG_Factory)
       return AMF.DG.Patterns.DG_Pattern_Access;

   function Create_Polygon
    (Self : not null access DG_Factory)
       return AMF.DG.Polygons.DG_Polygon_Access;

   function Create_Polyline
    (Self : not null access DG_Factory)
       return AMF.DG.Polylines.DG_Polyline_Access;

   function Create_Radial_Gradient
    (Self : not null access DG_Factory)
       return AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access;

   function Create_Rectangle
    (Self : not null access DG_Factory)
       return AMF.DG.Rectangles.DG_Rectangle_Access;

   function Create_Style
    (Self : not null access DG_Factory)
       return AMF.DG.Styles.DG_Style_Access;

   function Create_Text
    (Self : not null access DG_Factory)
       return AMF.DG.Texts.DG_Text_Access;

end AMF.Internals.Factories.DG_Factories;
