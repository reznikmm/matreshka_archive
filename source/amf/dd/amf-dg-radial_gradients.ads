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
--  RadialGradient is a kind of gradient that fills a graphical element by 
--  smoothly changing color values in a circle.
------------------------------------------------------------------------------
with AMF.DG.Gradients;

package AMF.DG.Radial_Gradients is

   pragma Preelaborate;

   type DG_Radial_Gradient is limited interface
     and AMF.DG.Gradients.DG_Gradient;

   type DG_Radial_Gradient_Access is
     access all DG_Radial_Gradient'Class;
   for DG_Radial_Gradient_Access'Storage_Size use 0;

   not overriding function Get_Center_X
    (Self : not null access constant DG_Radial_Gradient)
       return AMF.Real is abstract;
   --  Getter of RadialGradient::centerX.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x center point of the gradient.

   not overriding procedure Set_Center_X
    (Self : not null access DG_Radial_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of RadialGradient::centerX.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x center point of the gradient.

   not overriding function Get_Center_Y
    (Self : not null access constant DG_Radial_Gradient)
       return AMF.Real is abstract;
   --  Getter of RadialGradient::centerY.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the y center point of the gradient.

   not overriding procedure Set_Center_Y
    (Self : not null access DG_Radial_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of RadialGradient::centerY.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the y center point of the gradient.

   not overriding function Get_Radius
    (Self : not null access constant DG_Radial_Gradient)
       return AMF.Real is abstract;
   --  Getter of RadialGradient::radius.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's size that is the radius of the gradient.

   not overriding procedure Set_Radius
    (Self : not null access DG_Radial_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of RadialGradient::radius.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's size that is the radius of the gradient.

   not overriding function Get_Focus_X
    (Self : not null access constant DG_Radial_Gradient)
       return AMF.Real is abstract;
   --  Getter of RadialGradient::focusX.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x focus point of the gradient.

   not overriding procedure Set_Focus_X
    (Self : not null access DG_Radial_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of RadialGradient::focusX.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x focus point of the gradient.

   not overriding function Get_Focus_Y
    (Self : not null access constant DG_Radial_Gradient)
       return AMF.Real is abstract;
   --  Getter of RadialGradient::focusY.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the y focus point of the gradient.

   not overriding procedure Set_Focus_Y
    (Self : not null access DG_Radial_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of RadialGradient::focusY.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the y focus point of the gradient.

end AMF.DG.Radial_Gradients;
