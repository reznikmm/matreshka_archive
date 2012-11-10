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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

package AMF.Internals.Tables.DG_Metamodel is

   pragma Preelaborate;

   function MM_DG_DG return AMF.Internals.CMOF_Element;

   function MC_DG_Close_Path return AMF.Internals.CMOF_Element;
   function MC_DG_Cubic_Curve_To return AMF.Internals.CMOF_Element;
   function MC_DG_Elliptical_Arc_To return AMF.Internals.CMOF_Element;
   function MC_DG_Gradient_Stop return AMF.Internals.CMOF_Element;
   function MC_DG_Line_To return AMF.Internals.CMOF_Element;
   function MC_DG_Matrix return AMF.Internals.CMOF_Element;
   function MC_DG_Move_To return AMF.Internals.CMOF_Element;
   function MC_DG_Path_Command return AMF.Internals.CMOF_Element;
   function MC_DG_Quadratic_Curve_To return AMF.Internals.CMOF_Element;
   function MC_DG_Rotate return AMF.Internals.CMOF_Element;
   function MC_DG_Scale return AMF.Internals.CMOF_Element;
   function MC_DG_Skew return AMF.Internals.CMOF_Element;
   function MC_DG_Transform return AMF.Internals.CMOF_Element;
   function MC_DG_Translate return AMF.Internals.CMOF_Element;

   function MP_DG_Cubic_Curve_To_End_Control return AMF.Internals.CMOF_Element;
   function MP_DG_Cubic_Curve_To_Point return AMF.Internals.CMOF_Element;
   function MP_DG_Cubic_Curve_To_Start_Control return AMF.Internals.CMOF_Element;
   function MP_DG_Elliptical_Arc_To_Is_Large_Arc return AMF.Internals.CMOF_Element;
   function MP_DG_Elliptical_Arc_To_Is_Sweep return AMF.Internals.CMOF_Element;
   function MP_DG_Elliptical_Arc_To_Point return AMF.Internals.CMOF_Element;
   function MP_DG_Elliptical_Arc_To_Radii return AMF.Internals.CMOF_Element;
   function MP_DG_Elliptical_Arc_To_Rotation return AMF.Internals.CMOF_Element;
   function MP_DG_Gradient_Stop_Color return AMF.Internals.CMOF_Element;
   function MP_DG_Gradient_Stop_Offset return AMF.Internals.CMOF_Element;
   function MP_DG_Gradient_Stop_Opacity return AMF.Internals.CMOF_Element;
   function MP_DG_Line_To_Point return AMF.Internals.CMOF_Element;
   function MP_DG_Matrix_A return AMF.Internals.CMOF_Element;
   function MP_DG_Matrix_B return AMF.Internals.CMOF_Element;
   function MP_DG_Matrix_C return AMF.Internals.CMOF_Element;
   function MP_DG_Matrix_D return AMF.Internals.CMOF_Element;
   function MP_DG_Matrix_E return AMF.Internals.CMOF_Element;
   function MP_DG_Matrix_F return AMF.Internals.CMOF_Element;
   function MP_DG_Move_To_Point return AMF.Internals.CMOF_Element;
   function MP_DG_Path_Command_Is_Relative return AMF.Internals.CMOF_Element;
   function MP_DG_Quadratic_Curve_To_Control return AMF.Internals.CMOF_Element;
   function MP_DG_Quadratic_Curve_To_Point return AMF.Internals.CMOF_Element;
   function MP_DG_Rotate_Angle return AMF.Internals.CMOF_Element;
   function MP_DG_Rotate_Center return AMF.Internals.CMOF_Element;
   function MP_DG_Scale_Factor_X return AMF.Internals.CMOF_Element;
   function MP_DG_Scale_Factor_Y return AMF.Internals.CMOF_Element;
   function MP_DG_Skew_Angle_X return AMF.Internals.CMOF_Element;
   function MP_DG_Skew_Angle_Y return AMF.Internals.CMOF_Element;
   function MP_DG_Translate_Delta_X return AMF.Internals.CMOF_Element;
   function MP_DG_Translate_Delta_Y return AMF.Internals.CMOF_Element;

   function MC_DG_Canvas return AMF.Internals.CMOF_Element;
   function MC_DG_Circle return AMF.Internals.CMOF_Element;
   function MC_DG_Clip_Path return AMF.Internals.CMOF_Element;
   function MC_DG_Ellipse return AMF.Internals.CMOF_Element;
   function MC_DG_Fill return AMF.Internals.CMOF_Element;
   function MC_DG_Gradient return AMF.Internals.CMOF_Element;
   function MC_DG_Graphical_Element return AMF.Internals.CMOF_Element;
   function MC_DG_Group return AMF.Internals.CMOF_Element;
   function MC_DG_Image return AMF.Internals.CMOF_Element;
   function MC_DG_Line return AMF.Internals.CMOF_Element;
   function MC_DG_Linear_Gradient return AMF.Internals.CMOF_Element;
   function MC_DG_Marked_Element return AMF.Internals.CMOF_Element;
   function MC_DG_Marker return AMF.Internals.CMOF_Element;
   function MC_DG_Path return AMF.Internals.CMOF_Element;
   function MC_DG_Pattern return AMF.Internals.CMOF_Element;
   function MC_DG_Polygon return AMF.Internals.CMOF_Element;
   function MC_DG_Polyline return AMF.Internals.CMOF_Element;
   function MC_DG_Radial_Gradient return AMF.Internals.CMOF_Element;
   function MC_DG_Rectangle return AMF.Internals.CMOF_Element;
   function MC_DG_Style return AMF.Internals.CMOF_Element;
   function MC_DG_Text return AMF.Internals.CMOF_Element;

   function MP_DG_Canvas_Background_Color return AMF.Internals.CMOF_Element;
   function MP_DG_Canvas_Background_Fill return AMF.Internals.CMOF_Element;
   function MP_DG_Canvas_Packaged_Fill return AMF.Internals.CMOF_Element;
   function MP_DG_Canvas_Packaged_Marker return AMF.Internals.CMOF_Element;
   function MP_DG_Canvas_Packaged_Style return AMF.Internals.CMOF_Element;
   function MP_DG_Circle_Center return AMF.Internals.CMOF_Element;
   function MP_DG_Circle_Radius return AMF.Internals.CMOF_Element;
   function MP_DG_Clip_Path_Clipped_Element return AMF.Internals.CMOF_Element;
   function MP_DG_Ellipse_Center return AMF.Internals.CMOF_Element;
   function MP_DG_Ellipse_Radii return AMF.Internals.CMOF_Element;
   function MP_DG_Fill_Canvas return AMF.Internals.CMOF_Element;
   function MP_DG_Fill_Transform return AMF.Internals.CMOF_Element;
   function MP_DG_Gradient_Stop return AMF.Internals.CMOF_Element;
   function MP_DG_Graphical_Element_Clip_Path return AMF.Internals.CMOF_Element;
   function MP_DG_Graphical_Element_Group return AMF.Internals.CMOF_Element;
   function MP_DG_Graphical_Element_Local_Style return AMF.Internals.CMOF_Element;
   function MP_DG_Graphical_Element_Shared_Style return AMF.Internals.CMOF_Element;
   function MP_DG_Graphical_Element_Transform return AMF.Internals.CMOF_Element;
   function MP_DG_Group_Member return AMF.Internals.CMOF_Element;
   function MP_DG_Image_Bounds return AMF.Internals.CMOF_Element;
   function MP_DG_Image_Is_Aspect_Ratio_Preserved return AMF.Internals.CMOF_Element;
   function MP_DG_Image_Source return AMF.Internals.CMOF_Element;
   function MP_DG_Line_End return AMF.Internals.CMOF_Element;
   function MP_DG_Line_Start return AMF.Internals.CMOF_Element;
   function MP_DG_Linear_Gradient_X1 return AMF.Internals.CMOF_Element;
   function MP_DG_Linear_Gradient_X2 return AMF.Internals.CMOF_Element;
   function MP_DG_Linear_Gradient_Y1 return AMF.Internals.CMOF_Element;
   function MP_DG_Linear_Gradient_Y2 return AMF.Internals.CMOF_Element;
   function MP_DG_Marked_Element_End_Marker return AMF.Internals.CMOF_Element;
   function MP_DG_Marked_Element_Mid_Marker return AMF.Internals.CMOF_Element;
   function MP_DG_Marked_Element_Start_Marker return AMF.Internals.CMOF_Element;
   function MP_DG_Marker_Canvas return AMF.Internals.CMOF_Element;
   function MP_DG_Marker_Reference return AMF.Internals.CMOF_Element;
   function MP_DG_Marker_Size return AMF.Internals.CMOF_Element;
   function MP_DG_Path_Command return AMF.Internals.CMOF_Element;
   function MP_DG_Pattern_Bounds return AMF.Internals.CMOF_Element;
   function MP_DG_Pattern_Tile return AMF.Internals.CMOF_Element;
   function MP_DG_Polygon_Point return AMF.Internals.CMOF_Element;
   function MP_DG_Polyline_Point return AMF.Internals.CMOF_Element;
   function MP_DG_Radial_Gradient_Center_X return AMF.Internals.CMOF_Element;
   function MP_DG_Radial_Gradient_Center_Y return AMF.Internals.CMOF_Element;
   function MP_DG_Radial_Gradient_Focus_X return AMF.Internals.CMOF_Element;
   function MP_DG_Radial_Gradient_Focus_Y return AMF.Internals.CMOF_Element;
   function MP_DG_Radial_Gradient_Radius return AMF.Internals.CMOF_Element;
   function MP_DG_Rectangle_Bounds return AMF.Internals.CMOF_Element;
   function MP_DG_Rectangle_Corner_Radius return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Fill return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Fill_Color return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Fill_Opacity return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Font_Bold return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Font_Color return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Font_Italic return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Font_Name return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Font_Size return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Font_Strike_Through return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Font_Underline return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Stroke_Color return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Stroke_Dash_Length return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Stroke_Opacity return AMF.Internals.CMOF_Element;
   function MP_DG_Style_Stroke_Width return AMF.Internals.CMOF_Element;
   function MP_DG_Text_Alignment return AMF.Internals.CMOF_Element;
   function MP_DG_Text_Bounds return AMF.Internals.CMOF_Element;
   function MP_DG_Text_Data return AMF.Internals.CMOF_Element;

   function MA_DG_Graphical_Element_Tile_Pattern return AMF.Internals.CMOF_Element;
   function MA_DG_Style_Packaged_Style_Canvas return AMF.Internals.CMOF_Element;
   function MA_DG_Marker_Start_Marker_Marked_Element return AMF.Internals.CMOF_Element;
   function MA_DG_Marker_End_Marker_Marked_Element return AMF.Internals.CMOF_Element;
   function MA_DG_Graphical_Element_Member_Group return AMF.Internals.CMOF_Element;
   function MA_DG_Marker_Mid_Marker_Marked_Element return AMF.Internals.CMOF_Element;
   function MA_DG_Marker_Packaged_Marker_Canvas return AMF.Internals.CMOF_Element;
   function MA_DG_Clip_Path_Clip_Path_Clipped_Element return AMF.Internals.CMOF_Element;
   function MA_DG_Style_Local_Style_Styled_Element return AMF.Internals.CMOF_Element;
   function MA_DG_Fill_Packaged_Fill_Canvas return AMF.Internals.CMOF_Element;
   function MA_DG_Fill_Fill_Style return AMF.Internals.CMOF_Element;
   function MA_DG_Style_Shared_Style_Styled_Element return AMF.Internals.CMOF_Element;
   function MA_DG_Fill_Background_Fill_Canvas return AMF.Internals.CMOF_Element;

   function MB_DG return AMF.Internals.AMF_Element;

   function ML_DG return AMF.Internals.AMF_Element;

private

   Base : AMF.Internals.CMOF_Element := 0;

end AMF.Internals.Tables.DG_Metamodel;
