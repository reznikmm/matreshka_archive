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
--  Circle is a graphical element that defines a circular shape with a given 
--  center point and a radius.
------------------------------------------------------------------------------
limited with AMF.DC;
with AMF.DG.Graphical_Elements;

package AMF.DG.Circles is

   pragma Preelaborate;

   type DG_Circle is limited interface
     and AMF.DG.Graphical_Elements.DG_Graphical_Element;

   type DG_Circle_Access is
     access all DG_Circle'Class;
   for DG_Circle_Access'Storage_Size use 0;

   not overriding function Get_Center
    (Self : not null access constant DG_Circle)
       return AMF.DC.DC_Point is abstract;
   --  Getter of Circle::center.
   --
   --  the center point of the circle in the x-y coordinate system.

   not overriding procedure Set_Center
    (Self : not null access DG_Circle;
     To   : AMF.DC.DC_Point) is abstract;
   --  Setter of Circle::center.
   --
   --  the center point of the circle in the x-y coordinate system.

   not overriding function Get_Radius
    (Self : not null access constant DG_Circle)
       return AMF.Real is abstract;
   --  Getter of Circle::radius.
   --
   --  a real number (>=0) that represents the radius of the circle.

   not overriding procedure Set_Radius
    (Self : not null access DG_Circle;
     To   : AMF.Real) is abstract;
   --  Setter of Circle::radius.
   --
   --  a real number (>=0) that represents the radius of the circle.

end AMF.DG.Circles;
