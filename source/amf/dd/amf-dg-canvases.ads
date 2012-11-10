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
--  Canvas is a kind of group that represents the root of containment for all 
--  graphical elements that render one diagram.
------------------------------------------------------------------------------
limited with AMF.DC;
limited with AMF.DG.Fills.Collections;
with AMF.DG.Groups;
limited with AMF.DG.Markers.Collections;
limited with AMF.DG.Styles.Collections;

package AMF.DG.Canvases is

   pragma Preelaborate;

   type DG_Canvas is limited interface
     and AMF.DG.Groups.DG_Group;

   type DG_Canvas_Access is
     access all DG_Canvas'Class;
   for DG_Canvas_Access'Storage_Size use 0;

   not overriding function Get_Background_Fill
    (Self : not null access constant DG_Canvas)
       return AMF.DG.Fills.DG_Fill_Access is abstract;
   --  Getter of Canvas::backgroundFill.
   --
   --  a reference to a fill that is used to paint the background of the 
   --  canvas itself. A backgroundFill value is exclusive with a 
   --  backgroundColor value. If both are specified, the backgroundFill value 
   --  is used. If none is specified, no fill is applied (i.e. the canvas 
   --  becomes see-through).

   not overriding procedure Set_Background_Fill
    (Self : not null access DG_Canvas;
     To   : AMF.DG.Fills.DG_Fill_Access) is abstract;
   --  Setter of Canvas::backgroundFill.
   --
   --  a reference to a fill that is used to paint the background of the 
   --  canvas itself. A backgroundFill value is exclusive with a 
   --  backgroundColor value. If both are specified, the backgroundFill value 
   --  is used. If none is specified, no fill is applied (i.e. the canvas 
   --  becomes see-through).

   not overriding function Get_Background_Color
    (Self : not null access constant DG_Canvas)
       return AMF.DC.Optional_DC_Color is abstract;
   --  Getter of Canvas::backgroundColor.
   --
   --  a color that is used to paint the background of the canvas itself. A 
   --  backgroundColor value is exclusive with a backgroundFill value. If both 
   --  are specified, the backgroundFill value is used. If none is specified, 
   --  no fill is applied (i.e. the canvas becomes see-through).

   not overriding procedure Set_Background_Color
    (Self : not null access DG_Canvas;
     To   : AMF.DC.Optional_DC_Color) is abstract;
   --  Setter of Canvas::backgroundColor.
   --
   --  a color that is used to paint the background of the canvas itself. A 
   --  backgroundColor value is exclusive with a backgroundFill value. If both 
   --  are specified, the backgroundFill value is used. If none is specified, 
   --  no fill is applied (i.e. the canvas becomes see-through).

   not overriding function Get_Packaged_Fill
    (Self : not null access constant DG_Canvas)
       return AMF.DG.Fills.Collections.Set_Of_DG_Fill is abstract;
   --  Getter of Canvas::packagedFill.
   --
   --  a set of fills packaged by the canvas and referenced by graphical 
   --  elements in the canvas.

   not overriding function Get_Packaged_Marker
    (Self : not null access constant DG_Canvas)
       return AMF.DG.Markers.Collections.Set_Of_DG_Marker is abstract;
   --  Getter of Canvas::packagedMarker.
   --
   --  A set of markers packaged by the canvas and referenced by marked 
   --  elements in the canvas.

   not overriding function Get_Packaged_Style
    (Self : not null access constant DG_Canvas)
       return AMF.DG.Styles.Collections.Set_Of_DG_Style is abstract;
   --  Getter of Canvas::packagedStyle.
   --
   --  a set of styles packaged by the canvas and referenced by graphical 
   --  elements in the canvas as shared styles.

end AMF.DG.Canvases;
