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
with AMF.DG.Canvases;
with AMF.DG.Graphical_Elements;
with AMF.Elements;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.DD_Attributes;
with AMF.Visitors.DG_Iterators;
with AMF.Visitors.DG_Visitors;

package body AMF.Internals.DG_Patterns is

   ----------------
   -- Get_Bounds --
   ----------------

   overriding function Get_Bounds
    (Self : not null access constant DG_Pattern_Proxy)
       return AMF.DC.DC_Bounds is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Bounds
         (Self.Element);
   end Get_Bounds;

   ----------------
   -- Set_Bounds --
   ----------------

   overriding procedure Set_Bounds
    (Self : not null access DG_Pattern_Proxy;
     To   : AMF.DC.DC_Bounds) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Bounds
       (Self.Element, To);
   end Set_Bounds;

   --------------
   -- Get_Tile --
   --------------

   overriding function Get_Tile
    (Self : not null access constant DG_Pattern_Proxy)
       return AMF.DG.Graphical_Elements.DG_Graphical_Element_Access is
   begin
      return
        AMF.DG.Graphical_Elements.DG_Graphical_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.DD_Attributes.Internal_Get_Tile
             (Self.Element)));
   end Get_Tile;

   --------------
   -- Set_Tile --
   --------------

   overriding procedure Set_Tile
    (Self : not null access DG_Pattern_Proxy;
     To   : AMF.DG.Graphical_Elements.DG_Graphical_Element_Access) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Tile
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Tile;

   ----------------
   -- Get_Canvas --
   ----------------

   overriding function Get_Canvas
    (Self : not null access constant DG_Pattern_Proxy)
       return AMF.DG.Canvases.DG_Canvas_Access is
   begin
      return
        AMF.DG.Canvases.DG_Canvas_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.DD_Attributes.Internal_Get_Canvas
             (Self.Element)));
   end Get_Canvas;

   ----------------
   -- Set_Canvas --
   ----------------

   overriding procedure Set_Canvas
    (Self : not null access DG_Pattern_Proxy;
     To   : AMF.DG.Canvases.DG_Canvas_Access) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Canvas
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Canvas;

   -------------------
   -- Get_Transform --
   -------------------

   overriding function Get_Transform
    (Self : not null access constant DG_Pattern_Proxy)
       return AMF.DG.Sequence_Of_DG_Transform is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Transform
         (Self.Element);
   end Get_Transform;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant DG_Pattern_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Enter_Pattern
            (AMF.DG.Patterns.DG_Pattern_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant DG_Pattern_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Leave_Pattern
            (AMF.DG.Patterns.DG_Pattern_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant DG_Pattern_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.DG_Iterators.DG_Iterator'Class then
         AMF.Visitors.DG_Iterators.DG_Iterator'Class
          (Iterator).Visit_Pattern
            (Visitor,
             AMF.DG.Patterns.DG_Pattern_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.DG_Patterns;
