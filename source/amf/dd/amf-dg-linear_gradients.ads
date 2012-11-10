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
--  LinearGradient is a kind of gradient that fills a graphical element by 
--  smoothly changing color values along a vector.
------------------------------------------------------------------------------
with AMF.DG.Gradients;

package AMF.DG.Linear_Gradients is

   pragma Preelaborate;

   type DG_Linear_Gradient is limited interface
     and AMF.DG.Gradients.DG_Gradient;

   type DG_Linear_Gradient_Access is
     access all DG_Linear_Gradient'Class;
   for DG_Linear_Gradient_Access'Storage_Size use 0;

   not overriding function Get_X1
    (Self : not null access constant DG_Linear_Gradient)
       return AMF.Real is abstract;
   --  Getter of LinearGradient::x1.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x start point of the gradient.

   not overriding procedure Set_X1
    (Self : not null access DG_Linear_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of LinearGradient::x1.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x start point of the gradient.

   not overriding function Get_X2
    (Self : not null access constant DG_Linear_Gradient)
       return AMF.Real is abstract;
   --  Getter of LinearGradient::x2.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x end point of the gradient.

   not overriding procedure Set_X2
    (Self : not null access DG_Linear_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of LinearGradient::x2.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x end point of the gradient.

   not overriding function Get_Y1
    (Self : not null access constant DG_Linear_Gradient)
       return AMF.Real is abstract;
   --  Getter of LinearGradient::y1.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's height that is the y start point of the gradient.

   not overriding procedure Set_Y1
    (Self : not null access DG_Linear_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of LinearGradient::y1.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's height that is the y start point of the gradient.

   not overriding function Get_Y2
    (Self : not null access constant DG_Linear_Gradient)
       return AMF.Real is abstract;
   --  Getter of LinearGradient::y2.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's height that is the y end point of the gradient.

   not overriding procedure Set_Y2
    (Self : not null access DG_Linear_Gradient;
     To   : AMF.Real) is abstract;
   --  Setter of LinearGradient::y2.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's height that is the y end point of the gradient.

end AMF.DG.Linear_Gradients;
