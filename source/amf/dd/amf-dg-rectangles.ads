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
--  Rectangle is a graphical element that defines a rectangular shape with 
--  given bounds. A rectangle may be given rounded corners by setting its 
--  corner radius.
------------------------------------------------------------------------------
limited with AMF.DC;
with AMF.DG.Graphical_Elements;

package AMF.DG.Rectangles is

   pragma Preelaborate;

   type DG_Rectangle is limited interface
     and AMF.DG.Graphical_Elements.DG_Graphical_Element;

   type DG_Rectangle_Access is
     access all DG_Rectangle'Class;
   for DG_Rectangle_Access'Storage_Size use 0;

   not overriding function Get_Bounds
    (Self : not null access constant DG_Rectangle)
       return AMF.DC.DC_Bounds is abstract;
   --  Getter of Rectangle::bounds.
   --
   --  the bounds of the rectangle in the x-y coordinate system.

   not overriding procedure Set_Bounds
    (Self : not null access DG_Rectangle;
     To   : AMF.DC.DC_Bounds) is abstract;
   --  Setter of Rectangle::bounds.
   --
   --  the bounds of the rectangle in the x-y coordinate system.

   not overriding function Get_Corner_Radius
    (Self : not null access constant DG_Rectangle)
       return AMF.Real is abstract;
   --  Getter of Rectangle::cornerRadius.
   --
   --  a radius for the rectangle's rounded corners. When the radius is 0, the 
   --  rectangle is drawn with sharp corners.

   not overriding procedure Set_Corner_Radius
    (Self : not null access DG_Rectangle;
     To   : AMF.Real) is abstract;
   --  Setter of Rectangle::cornerRadius.
   --
   --  a radius for the rectangle's rounded corners. When the radius is 0, the 
   --  rectangle is drawn with sharp corners.

end AMF.DG.Rectangles;
