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
with League.Holders.Booleans;
with League.Strings.Internals;

with AMF.CMOF.Properties;
with AMF.Holders.Reals;
with AMF.Internals.Helpers;
with AMF.Internals.Listener_Registry;

with AMF.DC.Holders.Alignment_Kinds;
with AMF.DC.Holders.Bounds;
with AMF.DC.Holders.Dimensions;
with AMF.DC.Holders.Points;

package body AMF.Internals.Tables.DC_Notification is

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : Boolean;
     New_Value : Boolean) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        League.Holders.Booleans.To_Holder (Old_Value),
        League.Holders.Booleans.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Optional_Boolean;
     New_Value : AMF.Optional_Boolean) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.To_Holder (Old_Value),
        AMF.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : Matreshka.Internals.Strings.Shared_String_Access;
     New_Value : Matreshka.Internals.Strings.Shared_String_Access)
   is
      use type Matreshka.Internals.Strings.Shared_String_Access;

      OV : League.Holders.Holder;
      NV : League.Holders.Holder;

   begin
      League.Holders.Set_Tag (OV, League.Holders.Universal_String_Tag);

      if Old_Value /= null then
         League.Holders.Replace_Element
          (OV, League.Strings.Internals.Create (Old_Value));
      end if;

      League.Holders.Set_Tag (NV, League.Holders.Universal_String_Tag);

      if New_Value /= null then
         League.Holders.Replace_Element
          (NV, League.Strings.Internals.Create (New_Value));
      end if;

      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        OV,
        NV);
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Real;
     New_Value : AMF.Real) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.Reals.To_Holder (Old_Value),
        AMF.Holders.Reals.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Optional_Real;
     New_Value : AMF.Optional_Real) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.Holders.To_Holder (Old_Value),
        AMF.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.DC.DC_Alignment_Kind;
     New_Value : AMF.DC.DC_Alignment_Kind) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.DC.Holders.Alignment_Kinds.To_Holder (Old_Value),
        AMF.DC.Holders.Alignment_Kinds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.DC.Optional_DC_Color;
     New_Value : AMF.DC.Optional_DC_Color) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.DC.Holders.To_Holder (Old_Value),
        AMF.DC.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.DC.DC_Bounds;
     New_Value : AMF.DC.DC_Bounds) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.DC.Holders.Bounds.To_Holder (Old_Value),
        AMF.DC.Holders.Bounds.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.DC.Optional_DC_Bounds;
     New_Value : AMF.DC.Optional_DC_Bounds) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.DC.Holders.To_Holder (Old_Value),
        AMF.DC.Holders.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.DC.DC_Point;
     New_Value : AMF.DC.DC_Point) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.DC.Holders.Points.To_Holder (Old_Value),
        AMF.DC.Holders.Points.To_Holder (New_Value));
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.DC.DC_Dimension;
     New_Value : AMF.DC.DC_Dimension) is
   begin
      AMF.Internals.Listener_Registry.Notify_Attribute_Set
       (AMF.Internals.Helpers.To_Element (Element),
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element (Property)),
        (Is_Empty => True),
        AMF.DC.Holders.Dimensions.To_Holder (Old_Value),
        AMF.DC.Holders.Dimensions.To_Holder (New_Value));
   end Notify_Attribute_Set;

end AMF.Internals.Tables.DC_Notification;
