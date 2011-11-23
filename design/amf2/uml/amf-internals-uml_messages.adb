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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UML_Messages is

   ------------------
   -- Get_Argument --
   ------------------

   overriding function Get_Argument
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification is
   begin
      return
        AMF.UML.Value_Specifications.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Argument
             (Self.Id)));
   end Get_Argument;

   -------------------
   -- Get_Connector --
   -------------------

   overriding function Get_Connector
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Connectors.UML_Connector_Access is
   begin
      return
        AMF.UML.Connectors.UML_Connector_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Connector
             (Self.Id)));
   end Get_Connector;

   -------------------
   -- Set_Connector --
   -------------------

   overriding procedure Set_Connector
    (Self : not null access UML_Message_Proxy;
     To   : AMF.UML.Connectors.UML_Connector_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Connector
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Connector;

   ---------------------
   -- Get_Interaction --
   ---------------------

   overriding function Get_Interaction
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Interactions.UML_Interaction_Access is
   begin
      return
        AMF.UML.Interactions.UML_Interaction_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Interaction
             (Self.Id)));
   end Get_Interaction;

   ---------------------
   -- Set_Interaction --
   ---------------------

   overriding procedure Set_Interaction
    (Self : not null access UML_Message_Proxy;
     To   : AMF.UML.Interactions.UML_Interaction_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Interaction
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Interaction;

   ----------------------
   -- Get_Message_Kind --
   ----------------------

   overriding function Get_Message_Kind
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.UML_Message_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Message_Kind
         (Self.Id);
   end Get_Message_Kind;

   ----------------------
   -- Get_Message_Sort --
   ----------------------

   overriding function Get_Message_Sort
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.UML_Message_Sort is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Message_Sort
         (Self.Id);
   end Get_Message_Sort;

   ----------------------
   -- Set_Message_Sort --
   ----------------------

   overriding procedure Set_Message_Sort
    (Self : not null access UML_Message_Proxy;
     To   : AMF.UML.UML_Message_Sort) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Message_Sort
       (Self.Id, To);
   end Set_Message_Sort;

   -----------------------
   -- Get_Receive_Event --
   -----------------------

   overriding function Get_Receive_Event
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Message_Ends.UML_Message_End_Access is
   begin
      return
        AMF.UML.Message_Ends.UML_Message_End_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Receive_Event
             (Self.Id)));
   end Get_Receive_Event;

   -----------------------
   -- Set_Receive_Event --
   -----------------------

   overriding procedure Set_Receive_Event
    (Self : not null access UML_Message_Proxy;
     To   : AMF.UML.Message_Ends.UML_Message_End_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Receive_Event
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Receive_Event;

   --------------------
   -- Get_Send_Event --
   --------------------

   overriding function Get_Send_Event
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Message_Ends.UML_Message_End_Access is
   begin
      return
        AMF.UML.Message_Ends.UML_Message_End_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Send_Event
             (Self.Id)));
   end Get_Send_Event;

   --------------------
   -- Set_Send_Event --
   --------------------

   overriding procedure Set_Send_Event
    (Self : not null access UML_Message_Proxy;
     To   : AMF.UML.Message_Ends.UML_Message_End_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Send_Event
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Send_Event;

   -------------------
   -- Get_Signature --
   -------------------

   overriding function Get_Signature
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Named_Elements.UML_Named_Element_Access is
   begin
      return
        AMF.UML.Named_Elements.UML_Named_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Signature
             (Self.Id)));
   end Get_Signature;

   -------------------
   -- Set_Signature --
   -------------------

   overriding procedure Set_Signature
    (Self : not null access UML_Message_Proxy;
     To   : AMF.UML.Named_Elements.UML_Named_Element_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Signature
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Signature;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency is
   begin
      return
        AMF.UML.Dependencies.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Client_Dependency
             (Self.Id)));
   end Get_Client_Dependency;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant UML_Message_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Name (Self.Id);

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
    (Self : not null access UML_Message_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Id, null);

      else
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Id,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Name;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is
   begin
      return
        AMF.UML.String_Expressions.UML_String_Expression_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Name_Expression
             (Self.Id)));
   end Get_Name_Expression;

   -------------------------
   -- Set_Name_Expression --
   -------------------------

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Message_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Name_Expression
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Name_Expression;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      return
        AMF.UML.Namespaces.UML_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Namespace
             (Self.Id)));
   end Get_Namespace;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Message_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Qualified_Name (Self.Id);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Qualified_Name;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Visibility
         (Self.Id);
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
    (Self : not null access UML_Message_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Visibility
       (Self.Id, To);
   end Set_Visibility;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment is
   begin
      return
        AMF.UML.Comments.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Comment
             (Self.Id)));
   end Get_Owned_Comment;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Element
             (Self.Id)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   ------------------
   -- Message_Kind --
   ------------------

   overriding function Message_Kind
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.UML_Message_Kind is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Message_Kind unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.Message_Kind";
      return Message_Kind (Self);
   end Message_Kind;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Message_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Message_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
    (Self : not null access constant UML_Message_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.Separator";
      return Separator (Self);
   end Separator;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Message_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Message_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Message_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Messages;
