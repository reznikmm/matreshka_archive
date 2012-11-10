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
with AMF.Elements;
with AMF.Real_Collections;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.DD_Types is

   pragma Preelaborate;

   type Element_Kinds is
    (E_None,
     E_DG_Canvas,
     E_DG_Circle,
     E_DG_Clip_Path,
     E_DG_Ellipse,
     E_DG_Group,
     E_DG_Image,
     E_DG_Line,
     E_DG_Linear_Gradient,
     E_DG_Marked_Element,
     E_DG_Marker,
     E_DG_Path,
     E_DG_Pattern,
     E_DG_Polygon,
     E_DG_Polyline,
     E_DG_Radial_Gradient,
     E_DG_Rectangle,
     E_DG_Style,
     E_DG_Text);

   type Member_Kinds is
    (M_None,
     M_Alignment_Kind,
     M_Boolean,
     M_Bounds,
     M_Collection_Of_Element,
     M_Collection_Of_Gradient_Stop,
     M_Collection_Of_Path_Command,
     M_Collection_Of_Point,
     M_Collection_Of_Real,
     M_Collection_Of_Transform,
     M_Dimension,
     M_Element,
     M_Holder_Of_Boolean,
     M_Holder_Of_Color,
     M_Holder_Of_Real,
     M_Point,
     M_Real,
     M_String);

   type Member_Record (Kind : Member_Kinds := M_None) is record
      case Kind is
         when M_None =>
            null;

         when M_Alignment_Kind =>
            Alignment_Kind_Value : AMF.DC.DC_Alignment_Kind;

         when M_Boolean =>
            Boolean_Value : Boolean;

         when M_Bounds =>
            Bounds_Value : AMF.DC.DC_Bounds;

         when M_Collection_Of_Element =>
            Collection : AMF.Internals.AMF_Collection_Of_Element;

         when M_Collection_Of_Gradient_Stop =>
            Gradient_Collection : AMF.DG.Set_Of_DG_Gradient_Stop;

         when M_Collection_Of_Path_Command =>
            Path_Collection : AMF.DG.Sequence_Of_Path_Command;

         when M_Collection_Of_Point =>
            Point_Collection : AMF.DC.Sequence_Of_DC_Point;

         when M_Collection_Of_Real =>
            Real_Collection : AMF.Real_Collections.Sequence_Of_Real;

         when M_Collection_Of_Transform =>
            Transform_Collection : AMF.DG.Sequence_Of_DG_Transform;

         when M_Dimension =>
            Dimension_Value : AMF.DC.DC_Dimension;

         when M_Element =>
            Link : AMF.Internals.AMF_Link;

         when M_Holder_Of_Boolean =>
            Boolean_Holder : AMF.Optional_Boolean;

         when M_Holder_Of_Color =>
            Color_Holder : AMF.DC.Optional_DC_Color;

         when M_Holder_Of_Real =>
            Real_Holder : AMF.Optional_Real;

         when M_Point =>
            Point_Value : AMF.DC.DC_Point;

         when M_Real =>
            Real_Value : AMF.Real;

         when M_String =>
            String_Value : Matreshka.Internals.Strings.Shared_String_Access;
      end case;
   end record;

   type Member_Array is array (Natural range 0 .. 14) of Member_Record;

   type Element_Record is record
      Kind   : Element_Kinds := E_None;
      Extent : AMF.Internals.AMF_Extent;
      Proxy  : AMF.Elements.Element_Access;
      Member : Member_Array;
   end record;

end AMF.Internals.Tables.DD_Types;
