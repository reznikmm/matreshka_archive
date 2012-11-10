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
--  Pattern is a kind of fill that paints a graphical element (a tile) 
--  repeatedly at fixed intervals in x and y axes to cover the areas to be 
--  filled.
------------------------------------------------------------------------------
limited with AMF.DC;
with AMF.DG.Fills;
limited with AMF.DG.Graphical_Elements;

package AMF.DG.Patterns is

   pragma Preelaborate;

   type DG_Pattern is limited interface
     and AMF.DG.Fills.DG_Fill;

   type DG_Pattern_Access is
     access all DG_Pattern'Class;
   for DG_Pattern_Access'Storage_Size use 0;

   not overriding function Get_Bounds
    (Self : not null access constant DG_Pattern)
       return AMF.DC.DC_Bounds is abstract;
   --  Getter of Pattern::bounds.
   --
   --  the bounds of the pattern that define a private coordinate system for 
   --  the pattern's tile.

   not overriding procedure Set_Bounds
    (Self : not null access DG_Pattern;
     To   : AMF.DC.DC_Bounds) is abstract;
   --  Setter of Pattern::bounds.
   --
   --  the bounds of the pattern that define a private coordinate system for 
   --  the pattern's tile.

   not overriding function Get_Tile
    (Self : not null access constant DG_Pattern)
       return AMF.DG.Graphical_Elements.DG_Graphical_Element_Access is abstract;
   --  Getter of Pattern::tile.
   --
   --  a reference to a graphical element, owned by the pattern, that works as 
   --  a tile to be painted repeatedly at a fixed interval to fill an closed 
   --  area.

   not overriding procedure Set_Tile
    (Self : not null access DG_Pattern;
     To   : AMF.DG.Graphical_Elements.DG_Graphical_Element_Access) is abstract;
   --  Setter of Pattern::tile.
   --
   --  a reference to a graphical element, owned by the pattern, that works as 
   --  a tile to be painted repeatedly at a fixed interval to fill an closed 
   --  area.

end AMF.DG.Patterns;
