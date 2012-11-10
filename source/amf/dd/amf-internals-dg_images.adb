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
with AMF.DG.Styles.Collections;
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.DD_Attributes;
with AMF.Visitors.DG_Iterators;
with AMF.Visitors.DG_Visitors;
with League.Strings.Internals;

package body AMF.Internals.DG_Images is

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
    (Self : not null access constant DG_Image_Proxy)
       return League.Strings.Universal_String is
   begin
      null;
      return
        League.Strings.Internals.Create
         (AMF.Internals.Tables.DD_Attributes.Internal_Get_Source (Self.Element));
   end Get_Source;

   ----------------
   -- Set_Source --
   ----------------

   overriding procedure Set_Source
    (Self : not null access DG_Image_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Source
       (Self.Element,
        League.Strings.Internals.Internal (To));
   end Set_Source;

   ----------------
   -- Get_Bounds --
   ----------------

   overriding function Get_Bounds
    (Self : not null access constant DG_Image_Proxy)
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
    (Self : not null access DG_Image_Proxy;
     To   : AMF.DC.DC_Bounds) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Bounds
       (Self.Element, To);
   end Set_Bounds;

   -----------------------------------
   -- Get_Is_Aspect_Ratio_Preserved --
   -----------------------------------

   overriding function Get_Is_Aspect_Ratio_Preserved
    (Self : not null access constant DG_Image_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Is_Aspect_Ratio_Preserved
         (Self.Element);
   end Get_Is_Aspect_Ratio_Preserved;

   -----------------------------------
   -- Set_Is_Aspect_Ratio_Preserved --
   -----------------------------------

   overriding procedure Set_Is_Aspect_Ratio_Preserved
    (Self : not null access DG_Image_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Is_Aspect_Ratio_Preserved
       (Self.Element, To);
   end Set_Is_Aspect_Ratio_Preserved;

   ---------------
   -- Get_Group --
   ---------------

   overriding function Get_Group
    (Self : not null access constant DG_Image_Proxy)
       return AMF.DG.Groups.DG_Group_Access is
   begin
      return
        AMF.DG.Groups.DG_Group_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.DD_Attributes.Internal_Get_Group
             (Self.Element)));
   end Get_Group;

   ---------------
   -- Set_Group --
   ---------------

   overriding procedure Set_Group
    (Self : not null access DG_Image_Proxy;
     To   : AMF.DG.Groups.DG_Group_Access) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Group
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Group;

   ---------------------
   -- Get_Local_Style --
   ---------------------

   overriding function Get_Local_Style
    (Self : not null access constant DG_Image_Proxy)
       return AMF.DG.Styles.Collections.Ordered_Set_Of_DG_Style is
   begin
      return
        AMF.DG.Styles.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.DD_Attributes.Internal_Get_Local_Style
             (Self.Element)));
   end Get_Local_Style;

   ----------------------
   -- Get_Shared_Style --
   ----------------------

   overriding function Get_Shared_Style
    (Self : not null access constant DG_Image_Proxy)
       return AMF.DG.Styles.Collections.Ordered_Set_Of_DG_Style is
   begin
      return
        AMF.DG.Styles.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.DD_Attributes.Internal_Get_Shared_Style
             (Self.Element)));
   end Get_Shared_Style;

   -------------------
   -- Get_Transform --
   -------------------

   overriding function Get_Transform
    (Self : not null access constant DG_Image_Proxy)
       return AMF.DG.Sequence_Of_DG_Transform is
   begin
      return
        AMF.Internals.Tables.DD_Attributes.Internal_Get_Transform
         (Self.Element);
   end Get_Transform;

   -------------------
   -- Get_Clip_Path --
   -------------------

   overriding function Get_Clip_Path
    (Self : not null access constant DG_Image_Proxy)
       return AMF.DG.Clip_Paths.DG_Clip_Path_Access is
   begin
      return
        AMF.DG.Clip_Paths.DG_Clip_Path_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.DD_Attributes.Internal_Get_Clip_Path
             (Self.Element)));
   end Get_Clip_Path;

   -------------------
   -- Set_Clip_Path --
   -------------------

   overriding procedure Set_Clip_Path
    (Self : not null access DG_Image_Proxy;
     To   : AMF.DG.Clip_Paths.DG_Clip_Path_Access) is
   begin
      AMF.Internals.Tables.DD_Attributes.Internal_Set_Clip_Path
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Clip_Path;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant DG_Image_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Enter_Image
            (AMF.DG.Images.DG_Image_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant DG_Image_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.DG_Visitors.DG_Visitor'Class then
         AMF.Visitors.DG_Visitors.DG_Visitor'Class
          (Visitor).Leave_Image
            (AMF.DG.Images.DG_Image_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant DG_Image_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.DG_Iterators.DG_Iterator'Class then
         AMF.Visitors.DG_Iterators.DG_Iterator'Class
          (Iterator).Visit_Image
            (Visitor,
             AMF.DG.Images.DG_Image_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.DG_Images;
