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
with AMF.DG.Clip_Paths;
with AMF.DG.Groups;
with AMF.DG.Rectangles;
with AMF.DG.Styles.Collections;
with AMF.Internals.DG_Elements;
with AMF.Visitors;

package AMF.Internals.DG_Rectangles is

   type DG_Rectangle_Proxy is
     limited new AMF.Internals.DG_Elements.DG_Element_Proxy
       and AMF.DG.Rectangles.DG_Rectangle with null record;

   overriding function Get_Bounds
    (Self : not null access constant DG_Rectangle_Proxy)
       return AMF.DC.DC_Bounds;
   --  Getter of Rectangle::bounds.
   --
   --  the bounds of the rectangle in the x-y coordinate system.

   overriding procedure Set_Bounds
    (Self : not null access DG_Rectangle_Proxy;
     To   : AMF.DC.DC_Bounds);
   --  Setter of Rectangle::bounds.
   --
   --  the bounds of the rectangle in the x-y coordinate system.

   overriding function Get_Corner_Radius
    (Self : not null access constant DG_Rectangle_Proxy)
       return AMF.Real;
   --  Getter of Rectangle::cornerRadius.
   --
   --  a radius for the rectangle's rounded corners. When the radius is 0, the 
   --  rectangle is drawn with sharp corners.

   overriding procedure Set_Corner_Radius
    (Self : not null access DG_Rectangle_Proxy;
     To   : AMF.Real);
   --  Setter of Rectangle::cornerRadius.
   --
   --  a radius for the rectangle's rounded corners. When the radius is 0, the 
   --  rectangle is drawn with sharp corners.

   overriding function Get_Group
    (Self : not null access constant DG_Rectangle_Proxy)
       return AMF.DG.Groups.DG_Group_Access;
   --  Getter of GraphicalElement::group.
   --
   --  the group element that owns this graphical element.

   overriding procedure Set_Group
    (Self : not null access DG_Rectangle_Proxy;
     To   : AMF.DG.Groups.DG_Group_Access);
   --  Setter of GraphicalElement::group.
   --
   --  the group element that owns this graphical element.

   overriding function Get_Local_Style
    (Self : not null access constant DG_Rectangle_Proxy)
       return AMF.DG.Styles.Collections.Ordered_Set_Of_DG_Style;
   --  Getter of GraphicalElement::localStyle.
   --
   --  a list of locally-owned styles for this graphical element.

   overriding function Get_Shared_Style
    (Self : not null access constant DG_Rectangle_Proxy)
       return AMF.DG.Styles.Collections.Ordered_Set_Of_DG_Style;
   --  Getter of GraphicalElement::sharedStyle.
   --
   --  a list of shared styles for this graphical element.

   overriding function Get_Transform
    (Self : not null access constant DG_Rectangle_Proxy)
       return AMF.DG.Sequence_Of_DG_Transform;
   --  Getter of GraphicalElement::transform.
   --
   --  a list of zero or more transforms to apply to this graphical element.

   overriding function Get_Clip_Path
    (Self : not null access constant DG_Rectangle_Proxy)
       return AMF.DG.Clip_Paths.DG_Clip_Path_Access;
   --  Getter of GraphicalElement::clipPath.
   --
   --  an optional reference to a clip path element that masks the painting of 
   --  this graphical element.

   overriding procedure Set_Clip_Path
    (Self : not null access DG_Rectangle_Proxy;
     To   : AMF.DG.Clip_Paths.DG_Clip_Path_Access);
   --  Setter of GraphicalElement::clipPath.
   --
   --  an optional reference to a clip path element that masks the painting of 
   --  this graphical element.

   overriding procedure Enter_Element
    (Self    : not null access constant DG_Rectangle_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Element
    (Self    : not null access constant DG_Rectangle_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self     : not null access constant DG_Rectangle_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);

end AMF.Internals.DG_Rectangles;
