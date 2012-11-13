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
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;

package body AMF.Internals.UMLDI_UML_Diagram_Elements is

   ---------------
   -- Container --
   ---------------

   overriding function Container
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.Elements.Element_Access
   is
      use type AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access;

      Owning_Element : constant
        AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access
          := UMLDI_UML_Diagram_Element_Proxy'Class (Self.all).Get_Owning_Element;

   begin
      if Owning_Element /= null then
         --  Returns owingElement when it is defined, this is most common case
         --  for classes of UMLDI metamodel.

         return AMF.Elements.Element_Access (Owning_Element);

      else
         --  Use Container subprogram of parent tagged type to retrieve
         --  possible container. For UMLDI classes inherited from
         --  UML::Packageabe this implementation returns value of
         --  Element::owner attribute.

         return Element_Proxy (Self.all).Container;
      end if;
   end Container;

   ------------------------
   -- Get_Owning_Element --
   ------------------------

   overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access is
   begin
      return
        AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owning_Element
             (Self.Element)));
   end Get_Owning_Element;

   ------------------------
   -- Get_Owning_Element --
   ------------------------

   overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access is
   begin
      return
        AMF.DI.Diagram_Elements.DI_Diagram_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owning_Element
             (Self.Element)));
   end Get_Owning_Element;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.Collections.Ordered_Set_Of_UMLDI_UML_Diagram_Element is
   begin
      return
        AMF.UMLDI.UML_Diagram_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Element
             (Self.Element)));
   end Get_Owned_Element;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.DI.Diagram_Elements.Collections.Set_Of_DI_Diagram_Element is
   begin
      return
        AMF.DI.Diagram_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Element
             (Self.Element)));
   end Get_Owned_Element;

   ----------------------
   -- Get_Shared_Style --
   ----------------------

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access is
   begin
      return
        AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Shared_Style
             (Self.Element)));
   end Get_Shared_Style;

   ----------------------
   -- Get_Shared_Style --
   ----------------------

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.DI.Styles.DI_Style_Access is
   begin
      return
        AMF.DI.Styles.DI_Style_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Shared_Style
             (Self.Element)));
   end Get_Shared_Style;

   ------------------------
   -- Set_Owning_Element --
   ------------------------

   overriding procedure Set_Owning_Element
    (Self : not null access UMLDI_UML_Diagram_Element_Proxy;
     To   : AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access) is
   begin
      raise Program_Error;
--      AMF.Internals.Tables.UML_Attributes.Internal_Set_Owning_Element
--       (Self.Element,
--        AMF.Internals.Helpers.To_Element
--         (AMF.Elements.Element_Access (To)));
   end Set_Owning_Element;

   ----------------------
   -- Set_Shared_Style --
   ----------------------

   overriding procedure Set_Shared_Style
    (Self : not null access UMLDI_UML_Diagram_Element_Proxy;
     To   : AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Shared_Style
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Shared_Style;

   ----------------------
   -- Set_Shared_Style --
   ----------------------

   overriding procedure Set_Shared_Style
    (Self : not null access UMLDI_UML_Diagram_Element_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Shared_Style
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Shared_Style;

end AMF.Internals.UMLDI_UML_Diagram_Elements;
