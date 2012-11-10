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
with AMF.Elements;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.DD_Attributes;
with AMF.Visitors.DG_Iterators;
with AMF.Visitors.DG_Visitors;

package body AMF.Internals.DG_Radial_Gradients is

   ------------------
   -- Get_Center_X --
   ------------------

   overriding function Get_Center_X
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Center_X
         (Self.Element);
   end Get_Center_X;

   ------------------
   -- Set_Center_X --
   ------------------

   overriding procedure Set_Center_X
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Center_X
       (Self.Element, To);
   end Set_Center_X;

   ------------------
   -- Get_Center_Y --
   ------------------

   overriding function Get_Center_Y
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Center_Y
         (Self.Element);
   end Get_Center_Y;

   ------------------
   -- Set_Center_Y --
   ------------------

   overriding procedure Set_Center_Y
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Center_Y
       (Self.Element, To);
   end Set_Center_Y;

   ----------------
   -- Get_Radius --
   ----------------

   overriding function Get_Radius
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Radius
         (Self.Element);
   end Get_Radius;

   ----------------
   -- Set_Radius --
   ----------------

   overriding procedure Set_Radius
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Radius
       (Self.Element, To);
   end Set_Radius;

   -----------------
   -- Get_Focus_X --
   -----------------

   overriding function Get_Focus_X
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Focus_X
         (Self.Element);
   end Get_Focus_X;

   -----------------
   -- Set_Focus_X --
   -----------------

   overriding procedure Set_Focus_X
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Focus_X
       (Self.Element, To);
   end Set_Focus_X;

   -----------------
   -- Get_Focus_Y --
   -----------------

   overriding function Get_Focus_Y
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Focus_Y
         (Self.Element);
   end Get_Focus_Y;

   -----------------
   -- Set_Focus_Y --
   -----------------

   overriding procedure Set_Focus_Y
    (Self : not null access DG_Radial_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Focus_Y
       (Self.Element, To);
   end Set_Focus_Y;

   --------------
   -- Get_Stop --
   --------------

   overriding function Get_Stop
    (Self : not null access constant DG_Radial_Gradient_Proxy)
       return AMF.DG.Set_Of_DG_Gradient_Stop is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Stop
         (Self.Element);
   end Get_Stop;

   ----------------
   -- Get_Canvas --
   ----------------

   overriding function Get_Canvas
    (Self : not null access constant DG_Radial_Gradient_Proxy)
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
    (Self : not null access DG_Radial_Gradient_Proxy;
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
    (Self : not null access constant DG_Radial_Gradient_Proxy)
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
    (Self    : not null access constant DG_Radial_Gradient_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Enter_Radial_Gradient
            (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant DG_Radial_Gradient_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Leave_Radial_Gradient
            (AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant DG_Radial_Gradient_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.DG_Iterators.DG_Iterator'Class then
         AMF.Visitors.DG_Iterators.DG_Iterator'Class
          (Iterator).Visit_Radial_Gradient
            (Visitor,
             AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.DG_Radial_Gradients;
