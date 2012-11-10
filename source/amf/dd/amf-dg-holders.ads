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
with League.Holders;

package AMF.DG.Holders is

   pragma Preelaborate;

   --  ClosePath [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Close_Path;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Close_Path)
       return League.Holders.Holder;

   --  CubicCurveTo [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Cubic_Curve_To;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Cubic_Curve_To)
       return League.Holders.Holder;

   --  EllipticalArcTo [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Elliptical_Arc_To;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Elliptical_Arc_To)
       return League.Holders.Holder;

   --  GradientStop [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DC.Optional_DG_Gradient_Stop;
   function To_Holder
    (Element : AMF.DC.Optional_DG_Gradient_Stop)
       return League.Holders.Holder;

   --  LineTo [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Line_To;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Line_To)
       return League.Holders.Holder;

   --  Matrix [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Matrix;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Matrix)
       return League.Holders.Holder;

   --  MoveTo [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Move_To;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Move_To)
       return League.Holders.Holder;

   --  PathCommand [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DC.Optional_DG_Path_Command;
   function To_Holder
    (Element : AMF.DC.Optional_DG_Path_Command)
       return League.Holders.Holder;

   --  QuadraticCurveTo [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Quadratic_Curve_To;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Quadratic_Curve_To)
       return League.Holders.Holder;

   --  Rotate [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Rotate;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Rotate)
       return League.Holders.Holder;

   --  Scale [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Scale;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Scale)
       return League.Holders.Holder;

   --  Skew [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Skew;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Skew)
       return League.Holders.Holder;

   --  Transform [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DC.Optional_DG_Transform;
   function To_Holder
    (Element : AMF.DC.Optional_DG_Transform)
       return League.Holders.Holder;

   --  Translate [0..1]

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Translate;
   function To_Holder
    (Element : AMF.DG.Optional_DG_Translate)
       return League.Holders.Holder;

end AMF.DG.Holders;
