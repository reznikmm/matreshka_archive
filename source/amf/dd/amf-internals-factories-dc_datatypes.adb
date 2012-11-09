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
with AMF.CMOF.Properties;
with AMF.Holders.Reals;
with AMF.Internals.Elements;
with AMF.Internals.Objects;
with League.Holders.Integers;

with AMF.DC.Holders.Bounds;
with AMF.DC.Holders.Colors;
with AMF.DC.Holders.Dimensions;
with AMF.DC.Holders.Points;
with AMF.Internals.Tables.DC_Metamodel;

package body AMF.Internals.Factories.DC_Datatypes is

   function Bounds_Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder;

   procedure Bounds_Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder);

   function Color_Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder;

   procedure Color_Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder);

   function Dimension_Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder;

   procedure Dimension_Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder);

   function Point_Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder;

   procedure Point_Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder);

   ----------------
   -- Bounds_Get --
   ----------------

   function Bounds_Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder
   is
      P : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Property.all).Element;
      V : constant AMF.DC.DC_Bounds := AMF.DC.Holders.Bounds.Element (Object);

   begin
      if P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Bounds_X then
         return AMF.Holders.Reals.To_Holder (V.X);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Bounds_Y then
         return AMF.Holders.Reals.To_Holder (V.Y);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Bounds_Width then
         return AMF.Holders.Reals.To_Holder (V.Width);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Bounds_Height then
         return AMF.Holders.Reals.To_Holder (V.Height);

      else
         raise Program_Error;
      end if;
   end Bounds_Get;

   ----------------
   -- Bounds_Set --
   ----------------

   procedure Bounds_Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder)
   is
      P : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Property.all).Element;
      V : AMF.DC.DC_Bounds := AMF.DC.Holders.Bounds.Element (Object);

   begin
      if P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Bounds_X then
         V.X := AMF.Holders.Reals.Element (Value);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Bounds_Y then
         V.Y := AMF.Holders.Reals.Element (Value);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Bounds_Width then
         V.Width := AMF.Holders.Reals.Element (Value);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Bounds_Height then
         V.Height := AMF.Holders.Reals.Element (Value);

      else
         raise Program_Error;
      end if;

      AMF.DC.Holders.Bounds.Replace_Element (Object, V);
   end Bounds_Set;

   ---------------
   -- Color_Get --
   ---------------

   function Color_Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder
   is
      P : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Property.all).Element;
      V : constant AMF.DC.DC_Color := AMF.DC.Holders.Colors.Element (Object);

   begin
      if P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Color_Red then
         return League.Holders.Integers.To_Holder (V.Red);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Color_Green then
         return League.Holders.Integers.To_Holder (V.Green);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Color_Blue then
         return League.Holders.Integers.To_Holder (V.Blue);

      else
         raise Program_Error;
      end if;
   end Color_Get;

   ---------------
   -- Color_Set --
   ---------------

   procedure Color_Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder)
   is
      P : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Property.all).Element;
      V : AMF.DC.DC_Color := AMF.DC.Holders.Colors.Element (Object);

   begin
      if P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Color_Red then
         V.Red := League.Holders.Integers.Element (Value);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Color_Green then
         V.Green := League.Holders.Integers.Element (Value);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Color_Blue then
         V.Blue := League.Holders.Integers.Element (Value);

      else
         raise Program_Error;
      end if;

      AMF.DC.Holders.Colors.Replace_Element (Object, V);
   end Color_Set;

   -------------------
   -- Dimension_Get --
   -------------------

   function Dimension_Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder
   is
      P : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Property.all).Element;
      V : constant AMF.DC.DC_Dimension
        := AMF.DC.Holders.Dimensions.Element (Object);

   begin
      if P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Dimension_Width then
         return AMF.Holders.Reals.To_Holder (V.Width);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Dimension_Height then
         return AMF.Holders.Reals.To_Holder (V.Height);

      else
         raise Program_Error;
      end if;
   end Dimension_Get;

   -------------------
   -- Dimension_Set --
   -------------------

   procedure Dimension_Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder)
   is
      P : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Property.all).Element;
      V : AMF.DC.DC_Dimension := AMF.DC.Holders.Dimensions.Element (Object);

   begin
      if P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Dimension_Width then
         V.Width := AMF.Holders.Reals.Element (Value);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Dimension_Height then
         V.Height := AMF.Holders.Reals.Element (Value);

      else
         raise Program_Error;
      end if;

      AMF.DC.Holders.Dimensions.Replace_Element (Object, V);
   end Dimension_Set;

   ---------------
   -- Point_Get --
   ---------------

   function Point_Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder
   is
      P : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Property.all).Element;
      V : constant AMF.DC.DC_Point := AMF.DC.Holders.Points.Element (Object);

   begin
      if P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Point_X then
         return AMF.Holders.Reals.To_Holder (V.X);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Point_Y then
         return AMF.Holders.Reals.To_Holder (V.Y);

      else
         raise Program_Error;
      end if;
   end Point_Get;

   ---------------
   -- Point_Set --
   ---------------

   procedure Point_Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder)
   is
      P : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Property.all).Element;
      V : AMF.DC.DC_Point := AMF.DC.Holders.Points.Element (Object);

   begin
      if P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Point_X then
         V.X := AMF.Holders.Reals.Element (Value);

      elsif P = AMF.Internals.Tables.DC_Metamodel.MP_DC_Point_Y then
         V.Y := AMF.Holders.Reals.Element (Value);

      else
         raise Program_Error;
      end if;

      AMF.DC.Holders.Points.Replace_Element (Object, V);
   end Point_Set;

   Bounds_Descriptor    : aliased AMF.Internals.Objects.Object_Type_Descriptor
     := (Bounds_Get'Access, Bounds_Set'Access);
   Color_Descriptor     : aliased AMF.Internals.Objects.Object_Type_Descriptor
     := (Color_Get'Access, Color_Set'Access);
   Dimension_Descriptor : aliased AMF.Internals.Objects.Object_Type_Descriptor
     := (Dimension_Get'Access, Dimension_Set'Access);
   Point_Descriptor     : aliased AMF.Internals.Objects.Object_Type_Descriptor
     := (Point_Get'Access, Point_Set'Access);

begin
   AMF.Internals.Objects.Registry.Insert
    (AMF.DC.Holders.Bounds.Value_Tag, Bounds_Descriptor'Access);
   AMF.Internals.Objects.Registry.Insert
    (AMF.DC.Holders.Colors.Value_Tag, Color_Descriptor'Access);
   AMF.Internals.Objects.Registry.Insert
    (AMF.DC.Holders.Dimensions.Value_Tag, Dimension_Descriptor'Access);
   AMF.Internals.Objects.Registry.Insert
    (AMF.DC.Holders.Points.Value_Tag, Point_Descriptor'Access);
end AMF.Internals.Factories.DC_Datatypes;
