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
with AMF.Elements;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with AMF.Visitors.UMLDI_Iterators;
with AMF.Visitors.UMLDI_Visitors;
with League.Strings.Internals;

package body AMF.Internals.UMLDI_UML_Redefines_Labels is

   -----------------------
   -- Get_Model_Element --
   -----------------------

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access is
   begin
      return
        AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Model_Element
             (Self.Element)));
   end Get_Model_Element;

   -----------------------
   -- Set_Model_Element --
   -----------------------

   overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access) is
   begin
      raise Program_Error;
--      AMF.Internals.Tables.UML_Attributes.Internal_Set_Model_Element
--       (Self.Element,
--        AMF.Internals.Helpers.To_Element
--         (AMF.Elements.Element_Access (To)));
   end Set_Model_Element;

   --------------
   -- Get_Text --
   --------------

   overriding function Get_Text
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return League.Strings.Universal_String is
   begin
      null;
      return
        League.Strings.Internals.Create
         (AMF.Internals.Tables.UML_Attributes.Internal_Get_Text (Self.Element));
   end Get_Text;

   --------------
   -- Set_Text --
   --------------

   overriding procedure Set_Text
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Text
       (Self.Element,
        League.Strings.Internals.Internal (To));
   end Set_Text;

   -----------------
   -- Get_Is_Icon --
   -----------------

   overriding function Get_Is_Icon
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Icon
         (Self.Element);
   end Get_Is_Icon;

   -----------------
   -- Set_Is_Icon --
   -----------------

   overriding procedure Set_Is_Icon
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Icon
       (Self.Element, To);
   end Set_Is_Icon;

   ---------------------
   -- Get_Local_Style --
   ---------------------

   overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access is
   begin
      return
        AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Local_Style
             (Self.Element)));
   end Get_Local_Style;

   ---------------------
   -- Set_Local_Style --
   ---------------------

   overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Local_Style
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Local_Style;

   -----------------------
   -- Get_Model_Element --
   -----------------------

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      raise Program_Error;
      return X : AMF.UML.Elements.Collections.Set_Of_UML_Element;
--      return
--        AMF.UML.Elements.Collections.Wrap
--         (AMF.Internals.Element_Collections.Wrap
--           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Model_Element
--             (Self.Element)));
   end Get_Model_Element;

   ----------------------
   -- Get_Shared_Style --
   ----------------------

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UMLDI.UML_Styles.Collections.Set_Of_UMLDI_UML_Style is
   begin
      raise Program_Error;
      return X : AMF.UMLDI.UML_Styles.Collections.Set_Of_UMLDI_UML_Style;
--      return
--        AMF.UMLDI.UML_Styles.Collections.Wrap
--         (AMF.Internals.Element_Collections.Wrap
--           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Shared_Style
--             (Self.Element)));
   end Get_Shared_Style;

   -----------------------
   -- Get_Model_Element --
   -----------------------

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access is
   begin
      return
        AMF.CMOF.Elements.CMOF_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Model_Element
             (Self.Element)));
   end Get_Model_Element;

   ---------------------
   -- Get_Local_Style --
   ---------------------

   overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.DI.Styles.DI_Style_Access is
   begin
      return
        AMF.DI.Styles.DI_Style_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Local_Style
             (Self.Element)));
   end Get_Local_Style;

   ---------------------
   -- Set_Local_Style --
   ---------------------

   overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Local_Style
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Local_Style;

   ----------------------
   -- Get_Shared_Style --
   ----------------------

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.DI.Styles.DI_Style_Access is
   begin
      return
        AMF.DI.Styles.DI_Style_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Shared_Style
             (Self.Element)));
   end Get_Shared_Style;

   ----------------------
   -- Set_Shared_Style --
   ----------------------

   overriding procedure Set_Shared_Style
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Shared_Style
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Shared_Style;

   ----------------
   -- Get_Bounds --
   ----------------

   overriding function Get_Bounds
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.DC.Optional_DC_Bounds is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Bounds
         (Self.Element);
   end Get_Bounds;

   ----------------
   -- Set_Bounds --
   ----------------

   overriding procedure Set_Bounds
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.DC.Optional_DC_Bounds) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Bounds
       (Self.Element, To);
   end Set_Bounds;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UMLDI_UML_Redefines_Label_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UMLDI_Visitors.UMLDI_Visitor'Class then
         AMF.Visitors.UMLDI_Visitors.UMLDI_Visitor'Class
          (Visitor).Enter_UML_Redefines_Label
            (AMF.UMLDI.UML_Redefines_Labels.UMLDI_UML_Redefines_Label_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UMLDI_UML_Redefines_Label_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UMLDI_Visitors.UMLDI_Visitor'Class then
         AMF.Visitors.UMLDI_Visitors.UMLDI_Visitor'Class
          (Visitor).Leave_UML_Redefines_Label
            (AMF.UMLDI.UML_Redefines_Labels.UMLDI_UML_Redefines_Label_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UMLDI_UML_Redefines_Label_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UMLDI_Iterators.UMLDI_Iterator'Class then
         AMF.Visitors.UMLDI_Iterators.UMLDI_Iterator'Class
          (Iterator).Visit_UML_Redefines_Label
            (Visitor,
             AMF.UMLDI.UML_Redefines_Labels.UMLDI_UML_Redefines_Label_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.UMLDI_UML_Redefines_Labels;
