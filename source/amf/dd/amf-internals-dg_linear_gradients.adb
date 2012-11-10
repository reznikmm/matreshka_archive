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

package body AMF.Internals.DG_Linear_Gradients is

   ------------
   -- Get_X1 --
   ------------

   overriding function Get_X1
    (Self : not null access constant DG_Linear_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_X1
         (Self.Element);
   end Get_X1;

   ------------
   -- Set_X1 --
   ------------

   overriding procedure Set_X1
    (Self : not null access DG_Linear_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_X1
       (Self.Element, To);
   end Set_X1;

   ------------
   -- Get_X2 --
   ------------

   overriding function Get_X2
    (Self : not null access constant DG_Linear_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_X2
         (Self.Element);
   end Get_X2;

   ------------
   -- Set_X2 --
   ------------

   overriding procedure Set_X2
    (Self : not null access DG_Linear_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_X2
       (Self.Element, To);
   end Set_X2;

   ------------
   -- Get_Y1 --
   ------------

   overriding function Get_Y1
    (Self : not null access constant DG_Linear_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Y1
         (Self.Element);
   end Get_Y1;

   ------------
   -- Set_Y1 --
   ------------

   overriding procedure Set_Y1
    (Self : not null access DG_Linear_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Y1
       (Self.Element, To);
   end Set_Y1;

   ------------
   -- Get_Y2 --
   ------------

   overriding function Get_Y2
    (Self : not null access constant DG_Linear_Gradient_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Y2
         (Self.Element);
   end Get_Y2;

   ------------
   -- Set_Y2 --
   ------------

   overriding procedure Set_Y2
    (Self : not null access DG_Linear_Gradient_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Y2
       (Self.Element, To);
   end Set_Y2;

   --------------
   -- Get_Stop --
   --------------

   overriding function Get_Stop
    (Self : not null access constant DG_Linear_Gradient_Proxy)
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
    (Self : not null access constant DG_Linear_Gradient_Proxy)
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
    (Self : not null access DG_Linear_Gradient_Proxy;
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
    (Self : not null access constant DG_Linear_Gradient_Proxy)
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
    (Self    : not null access constant DG_Linear_Gradient_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Enter_Linear_Gradient
            (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant DG_Linear_Gradient_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Leave_Linear_Gradient
            (AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant DG_Linear_Gradient_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.DG_Iterators.DG_Iterator'Class then
         AMF.Visitors.DG_Iterators.DG_Iterator'Class
          (Iterator).Visit_Linear_Gradient
            (Visitor,
             AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.DG_Linear_Gradients;
