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
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with AMF.Visitors.UMLDI_Iterators;
with AMF.Visitors.UMLDI_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UMLDI_UML_Interaction_Diagrams is

   --------------
   -- Get_Kind --
   --------------

   overriding function Get_Kind
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UMLDI.UMLDI_UML_Interaction_Diagram_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Kind
         (Self.Element);
   end Get_Kind;

   --------------
   -- Set_Kind --
   --------------

   overriding procedure Set_Kind
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.UMLDI.UMLDI_UML_Interaction_Diagram_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Kind
       (Self.Element, To);
   end Set_Kind;

   -----------------------
   -- Get_Model_Element --
   -----------------------

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Interactions.UML_Interaction_Access is
   begin
      return
        AMF.UML.Interactions.UML_Interaction_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Model_Element
             (Self.Element)));
   end Get_Model_Element;

   -----------------------
   -- Set_Model_Element --
   -----------------------

   overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.UML.Interactions.UML_Interaction_Access) is
   begin
      raise Program_Error;
--      AMF.Internals.Tables.UML_Attributes.Internal_Set_Model_Element
--       (Self.Element,
--        AMF.Internals.Helpers.To_Element
--         (AMF.Elements.Element_Access (To)));
   end Set_Model_Element;

   -----------------------
   -- Get_Model_Element --
   -----------------------

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Model_Element
             (Self.Element)));
   end Get_Model_Element;

   -----------------------
   -- Set_Model_Element --
   -----------------------

   overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      raise Program_Error;
--      AMF.Internals.Tables.UML_Attributes.Internal_Set_Model_Element
--       (Self.Element,
--        AMF.Internals.Helpers.To_Element
--         (AMF.Elements.Element_Access (To)));
   end Set_Model_Element;

   -----------------
   -- Get_Heading --
   -----------------

   overriding function Get_Heading
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UMLDI.UML_Labels.UMLDI_UML_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Labels.UMLDI_UML_Label_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Heading
             (Self.Element)));
   end Get_Heading;

   -----------------
   -- Set_Heading --
   -----------------

   overriding procedure Set_Heading
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.UMLDI.UML_Labels.UMLDI_UML_Label_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Heading
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Heading;

   ------------------
   -- Get_Is_Frame --
   ------------------

   overriding function Get_Is_Frame
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Frame
         (Self.Element);
   end Get_Is_Frame;

   ------------------
   -- Set_Is_Frame --
   ------------------

   overriding procedure Set_Is_Frame
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Frame
       (Self.Element, To);
   end Set_Is_Frame;

   ----------------
   -- Get_Is_Iso --
   ----------------

   overriding function Get_Is_Iso
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Iso
         (Self.Element);
   end Get_Is_Iso;

   ----------------
   -- Set_Is_Iso --
   ----------------

   overriding procedure Set_Is_Iso
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Iso
       (Self.Element, To);
   end Set_Is_Iso;

   -----------------
   -- Get_Is_Icon --
   -----------------

   overriding function Get_Is_Icon
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
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
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Icon
       (Self.Element, To);
   end Set_Is_Icon;

   ---------------------
   -- Get_Local_Style --
   ---------------------

   overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
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
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
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
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
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
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
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
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
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
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
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
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
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
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
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
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Shared_Style
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Shared_Style;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return League.Strings.Universal_String is
   begin
      null;
      return
        League.Strings.Internals.Create
         (AMF.Internals.Tables.UML_Attributes.Internal_Get_Name (Self.Element));
   end Get_Name;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
       (Self.Element,
        League.Strings.Internals.Internal (To));
   end Set_Name;

   -----------------------
   -- Get_Documentation --
   -----------------------

   overriding function Get_Documentation
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return League.Strings.Universal_String is
   begin
      null;
      return
        League.Strings.Internals.Create
         (AMF.Internals.Tables.UML_Attributes.Internal_Get_Documentation (Self.Element));
   end Get_Documentation;

   -----------------------
   -- Set_Documentation --
   -----------------------

   overriding procedure Set_Documentation
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Documentation
       (Self.Element,
        League.Strings.Internals.Internal (To));
   end Set_Documentation;

   --------------------
   -- Get_Resolution --
   --------------------

   overriding function Get_Resolution
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.Real is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Resolution
         (Self.Element);
   end Get_Resolution;

   --------------------
   -- Set_Resolution --
   --------------------

   overriding procedure Set_Resolution
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.Real) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Resolution
       (Self.Element, To);
   end Set_Resolution;

   ----------------
   -- Get_Bounds --
   ----------------

   overriding function Get_Bounds
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
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
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.DC.Optional_DC_Bounds) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Bounds
       (Self.Element, To);
   end Set_Bounds;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency is
   begin
      return
        AMF.UML.Dependencies.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Client_Dependency
             (Self.Element)));
   end Get_Client_Dependency;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Name (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Name;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Element, null);

      else
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Name;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is
   begin
      return
        AMF.UML.String_Expressions.UML_String_Expression_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Name_Expression
             (Self.Element)));
   end Get_Name_Expression;

   -------------------------
   -- Set_Name_Expression --
   -------------------------

   overriding procedure Set_Name_Expression
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Name_Expression
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Name_Expression;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      return
        AMF.UML.Namespaces.UML_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Namespace
             (Self.Element)));
   end Get_Namespace;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Qualified_Name (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Qualified_Name;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment is
   begin
      return
        AMF.UML.Comments.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Comment
             (Self.Element)));
   end Get_Owned_Comment;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Element
             (Self.Element)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Element)));
   end Get_Owner;

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owning_Template_Parameter
             (Self.Element)));
   end Get_Owning_Template_Parameter;

   -----------------------------------
   -- Set_Owning_Template_Parameter --
   -----------------------------------

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Owning_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Owning_Template_Parameter;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Template_Parameter
             (Self.Element)));
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
    (Self : not null access UMLDI_UML_Interaction_Diagram_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.Separator";
      return Separator (Self);
   end Separator;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.Is_Compatible_With";
      return Is_Compatible_With (Self, P);
   end Is_Compatible_With;

   ---------------------------
   -- Is_Template_Parameter --
   ---------------------------

   overriding function Is_Template_Parameter
    (Self : not null access constant UMLDI_UML_Interaction_Diagram_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure UMLDI_UML_Interaction_Diagram_Proxy.Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UMLDI_UML_Interaction_Diagram_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UMLDI_Visitors.UMLDI_Visitor'Class then
         AMF.Visitors.UMLDI_Visitors.UMLDI_Visitor'Class
          (Visitor).Enter_UML_Interaction_Diagram
            (AMF.UMLDI.UML_Interaction_Diagrams.UMLDI_UML_Interaction_Diagram_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UMLDI_UML_Interaction_Diagram_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UMLDI_Visitors.UMLDI_Visitor'Class then
         AMF.Visitors.UMLDI_Visitors.UMLDI_Visitor'Class
          (Visitor).Leave_UML_Interaction_Diagram
            (AMF.UMLDI.UML_Interaction_Diagrams.UMLDI_UML_Interaction_Diagram_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UMLDI_UML_Interaction_Diagram_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UMLDI_Iterators.UMLDI_Iterator'Class then
         AMF.Visitors.UMLDI_Iterators.UMLDI_Iterator'Class
          (Iterator).Visit_UML_Interaction_Diagram
            (Visitor,
             AMF.UMLDI.UML_Interaction_Diagrams.UMLDI_UML_Interaction_Diagram_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.UMLDI_UML_Interaction_Diagrams;
