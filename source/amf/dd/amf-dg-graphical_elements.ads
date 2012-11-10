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
--  GraphicalElement is the abstract superclass of all graphical elements that 
--  can be nested in a canvas.
------------------------------------------------------------------------------
limited with AMF.DG.Clip_Paths;
limited with AMF.DG.Groups;
limited with AMF.DG.Styles.Collections;

package AMF.DG.Graphical_Elements is

   pragma Preelaborate;

   type DG_Graphical_Element is limited interface;

   type DG_Graphical_Element_Access is
     access all DG_Graphical_Element'Class;
   for DG_Graphical_Element_Access'Storage_Size use 0;

   not overriding function Get_Group
    (Self : not null access constant DG_Graphical_Element)
       return AMF.DG.Groups.DG_Group_Access is abstract;
   --  Getter of GraphicalElement::group.
   --
   --  the group element that owns this graphical element.

   not overriding procedure Set_Group
    (Self : not null access DG_Graphical_Element;
     To   : AMF.DG.Groups.DG_Group_Access) is abstract;
   --  Setter of GraphicalElement::group.
   --
   --  the group element that owns this graphical element.

   not overriding function Get_Local_Style
    (Self : not null access constant DG_Graphical_Element)
       return AMF.DG.Styles.Collections.Ordered_Set_Of_DG_Style is abstract;
   --  Getter of GraphicalElement::localStyle.
   --
   --  a list of locally-owned styles for this graphical element.

   not overriding function Get_Shared_Style
    (Self : not null access constant DG_Graphical_Element)
       return AMF.DG.Styles.Collections.Ordered_Set_Of_DG_Style is abstract;
   --  Getter of GraphicalElement::sharedStyle.
   --
   --  a list of shared styles for this graphical element.

   not overriding function Get_Transform
    (Self : not null access constant DG_Graphical_Element)
       return AMF.DG.Sequence_Of_DG_Transform is abstract;
   --  Getter of GraphicalElement::transform.
   --
   --  a list of zero or more transforms to apply to this graphical element.

   not overriding function Get_Clip_Path
    (Self : not null access constant DG_Graphical_Element)
       return AMF.DG.Clip_Paths.DG_Clip_Path_Access is abstract;
   --  Getter of GraphicalElement::clipPath.
   --
   --  an optional reference to a clip path element that masks the painting of 
   --  this graphical element.

   not overriding procedure Set_Clip_Path
    (Self : not null access DG_Graphical_Element;
     To   : AMF.DG.Clip_Paths.DG_Clip_Path_Access) is abstract;
   --  Setter of GraphicalElement::clipPath.
   --
   --  an optional reference to a clip path element that masks the painting of 
   --  this graphical element.

end AMF.DG.Graphical_Elements;
