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
with AMF.DG.Fills;
with AMF.Elements;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.DD_Attributes;
with AMF.Real_Collections;
with AMF.Visitors.DG_Iterators;
with AMF.Visitors.DG_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.DG_Styles is

   --------------
   -- Get_Fill --
   --------------

   overriding function Get_Fill
    (Self : not null access constant DG_Style_Proxy)
       return AMF.DG.Fills.DG_Fill_Access is
   begin
      return
        AMF.DG.Fills.DG_Fill_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.DD_Attributes.Internal_Get_Fill
             (Self.Element)));
   end Get_Fill;

   --------------
   -- Set_Fill --
   --------------

   overriding procedure Set_Fill
    (Self : not null access DG_Style_Proxy;
     To   : AMF.DG.Fills.DG_Fill_Access) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Fill
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Fill;

   --------------------
   -- Get_Fill_Color --
   --------------------

   overriding function Get_Fill_Color
    (Self : not null access constant DG_Style_Proxy)
       return AMF.DC.Optional_DC_Color is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Fill_Color
         (Self.Element);
   end Get_Fill_Color;

   --------------------
   -- Set_Fill_Color --
   --------------------

   overriding procedure Set_Fill_Color
    (Self : not null access DG_Style_Proxy;
     To   : AMF.DC.Optional_DC_Color) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Fill_Color
       (Self.Element, To);
   end Set_Fill_Color;

   ----------------------
   -- Get_Fill_Opacity --
   ----------------------

   overriding function Get_Fill_Opacity
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Fill_Opacity
         (Self.Element);
   end Get_Fill_Opacity;

   ----------------------
   -- Set_Fill_Opacity --
   ----------------------

   overriding procedure Set_Fill_Opacity
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Fill_Opacity
       (Self.Element, To);
   end Set_Fill_Opacity;

   ----------------------
   -- Get_Stroke_Width --
   ----------------------

   overriding function Get_Stroke_Width
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Stroke_Width
         (Self.Element);
   end Get_Stroke_Width;

   ----------------------
   -- Set_Stroke_Width --
   ----------------------

   overriding procedure Set_Stroke_Width
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Stroke_Width
       (Self.Element, To);
   end Set_Stroke_Width;

   ------------------------
   -- Get_Stroke_Opacity --
   ------------------------

   overriding function Get_Stroke_Opacity
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Stroke_Opacity
         (Self.Element);
   end Get_Stroke_Opacity;

   ------------------------
   -- Set_Stroke_Opacity --
   ------------------------

   overriding procedure Set_Stroke_Opacity
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Stroke_Opacity
       (Self.Element, To);
   end Set_Stroke_Opacity;

   ----------------------
   -- Get_Stroke_Color --
   ----------------------

   overriding function Get_Stroke_Color
    (Self : not null access constant DG_Style_Proxy)
       return AMF.DC.Optional_DC_Color is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Stroke_Color
         (Self.Element);
   end Get_Stroke_Color;

   ----------------------
   -- Set_Stroke_Color --
   ----------------------

   overriding procedure Set_Stroke_Color
    (Self : not null access DG_Style_Proxy;
     To   : AMF.DC.Optional_DC_Color) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Stroke_Color
       (Self.Element, To);
   end Set_Stroke_Color;

   ----------------------------
   -- Get_Stroke_Dash_Length --
   ----------------------------

   overriding function Get_Stroke_Dash_Length
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Real_Collections.Sequence_Of_Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Stroke_Dash_Length
         (Self.Element);
   end Get_Stroke_Dash_Length;

   -------------------
   -- Get_Font_Size --
   -------------------

   overriding function Get_Font_Size
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Real is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Font_Size
         (Self.Element);
   end Get_Font_Size;

   -------------------
   -- Set_Font_Size --
   -------------------

   overriding procedure Set_Font_Size
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Real) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Font_Size
       (Self.Element, To);
   end Set_Font_Size;

   -------------------
   -- Get_Font_Name --
   -------------------

   overriding function Get_Font_Name
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.DD_Attributes.Internal_Get_Font_Name (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Font_Name;

   -------------------
   -- Set_Font_Name --
   -------------------

   overriding procedure Set_Font_Name
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.DD_Attributes.Internal_Set_Font_Name
          (Self.Element, null);

      else
         AMF.Internals.Tables.DD_Attributes.Internal_Set_Font_Name
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Font_Name;

   --------------------
   -- Get_Font_Color --
   --------------------

   overriding function Get_Font_Color
    (Self : not null access constant DG_Style_Proxy)
       return AMF.DC.Optional_DC_Color is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Font_Color
         (Self.Element);
   end Get_Font_Color;

   --------------------
   -- Set_Font_Color --
   --------------------

   overriding procedure Set_Font_Color
    (Self : not null access DG_Style_Proxy;
     To   : AMF.DC.Optional_DC_Color) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Font_Color
       (Self.Element, To);
   end Set_Font_Color;

   ---------------------
   -- Get_Font_Italic --
   ---------------------

   overriding function Get_Font_Italic
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Boolean is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Font_Italic
         (Self.Element);
   end Get_Font_Italic;

   ---------------------
   -- Set_Font_Italic --
   ---------------------

   overriding procedure Set_Font_Italic
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Boolean) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Font_Italic
       (Self.Element, To);
   end Set_Font_Italic;

   -------------------
   -- Get_Font_Bold --
   -------------------

   overriding function Get_Font_Bold
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Boolean is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Font_Bold
         (Self.Element);
   end Get_Font_Bold;

   -------------------
   -- Set_Font_Bold --
   -------------------

   overriding procedure Set_Font_Bold
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Boolean) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Font_Bold
       (Self.Element, To);
   end Set_Font_Bold;

   ------------------------
   -- Get_Font_Underline --
   ------------------------

   overriding function Get_Font_Underline
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Boolean is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Font_Underline
         (Self.Element);
   end Get_Font_Underline;

   ------------------------
   -- Set_Font_Underline --
   ------------------------

   overriding procedure Set_Font_Underline
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Boolean) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Font_Underline
       (Self.Element, To);
   end Set_Font_Underline;

   -----------------------------
   -- Get_Font_Strike_Through --
   -----------------------------

   overriding function Get_Font_Strike_Through
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Boolean is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Font_Strike_Through
         (Self.Element);
   end Get_Font_Strike_Through;

   -----------------------------
   -- Set_Font_Strike_Through --
   -----------------------------

   overriding procedure Set_Font_Strike_Through
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Boolean) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Font_Strike_Through
       (Self.Element, To);
   end Set_Font_Strike_Through;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant DG_Style_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Enter_Style
            (AMF.DG.Styles.DG_Style_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant DG_Style_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Leave_Style
            (AMF.DG.Styles.DG_Style_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant DG_Style_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.DG_Iterators.DG_Iterator'Class then
         AMF.Visitors.DG_Iterators.DG_Iterator'Class
          (Iterator).Visit_Style
            (Visitor,
             AMF.DG.Styles.DG_Style_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.DG_Styles;
