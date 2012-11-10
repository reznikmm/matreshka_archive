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
with AMF.DG.Canvases;
with AMF.DG.Radial_Gradients;
with AMF.Internals.DG_Elements;
with AMF.Visitors;

package AMF.Internals.DG_Radial_Gradients is

   type DG_Radial_Gradient_Proxy is
     limited new AMF.Internals.DG_Elements.DG_Element_Proxy
       and AMF.DG.Radial_Gradients.DG_Radial_Gradient with null record;

   overriding function Get_Center_X
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real;
   --  Getter of RadialGradient::centerX.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x center point of the gradient.

   overriding procedure Set_Center_X
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real);
   --  Setter of RadialGradient::centerX.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x center point of the gradient.

   overriding function Get_Center_Y
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real;
   --  Getter of RadialGradient::centerY.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the y center point of the gradient.

   overriding procedure Set_Center_Y
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real);
   --  Setter of RadialGradient::centerY.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the y center point of the gradient.

   overriding function Get_Radius
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real;
   --  Getter of RadialGradient::radius.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's size that is the radius of the gradient.

   overriding procedure Set_Radius
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real);
   --  Setter of RadialGradient::radius.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's size that is the radius of the gradient.

   overriding function Get_Focus_X
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real;
   --  Getter of RadialGradient::focusX.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x focus point of the gradient.

   overriding procedure Set_Focus_X
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real);
   --  Setter of RadialGradient::focusX.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the x focus point of the gradient.

   overriding function Get_Focus_Y
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real;
   --  Getter of RadialGradient::focusY.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the y focus point of the gradient.

   overriding procedure Set_Focus_Y
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real);
   --  Setter of RadialGradient::focusY.
   --
   --  a real number (>=0 and >=1) representing a ratio of the graphical 
   --  element's width that is the y focus point of the gradient.

   overriding function Get_Stop
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.DG.Set_Of_DG_Gradient_Stop;
   --  Getter of Gradient::stop.
   --
   --  a list of two or more gradient stops defining the color transitions of 
   --  the gradient.

   overriding function Get_Canvas
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.DG.Canvases.DG_Canvas_Access;
   --  Getter of Fill::canvas.
   --
   --  a reference to the canvas that owns this fill.

   overriding procedure Set_Canvas
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.DG.Canvases.DG_Canvas_Access);
   --  Setter of Fill::canvas.
   --
   --  a reference to the canvas that owns this fill.

   overriding function Get_Transform
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.DG.Sequence_Of_DG_Transform;
   --  Getter of Fill::transform.
   --
   --  a list of zero or more transforms to apply to this fill.

   overriding procedure Enter_Element
    (Self    : not null access constant DG_Radial_Gradient_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Element
    (Self    : not null access constant DG_Radial_Gradient_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self     : not null access constant DG_Radial_Gradient_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);

end AMF.Internals.DG_Radial_Gradients;
