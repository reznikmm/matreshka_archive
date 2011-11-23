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

package body AMF.Internals.UML_Activity_Partitions is

   --------------
   -- Get_Edge --
   --------------

   overriding function Get_Edge
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is
   begin
      return
        AMF.UML.Activity_Edges.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Edge
             (Self.Id)));
   end Get_Edge;

   ----------------------
   -- Get_Is_Dimension --
   ----------------------

   overriding function Get_Is_Dimension
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Dimension
         (Self.Id);
   end Get_Is_Dimension;

   ----------------------
   -- Set_Is_Dimension --
   ----------------------

   overriding procedure Set_Is_Dimension
    (Self : not null access UML_Activity_Partition_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Dimension
       (Self.Id, To);
   end Set_Is_Dimension;

   ---------------------
   -- Get_Is_External --
   ---------------------

   overriding function Get_Is_External
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_External
         (Self.Id);
   end Get_Is_External;

   ---------------------
   -- Set_Is_External --
   ---------------------

   overriding procedure Set_Is_External
    (Self : not null access UML_Activity_Partition_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_External
       (Self.Id, To);
   end Set_Is_External;

   --------------
   -- Get_Node --
   --------------

   overriding function Get_Node
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is
   begin
      return
        AMF.UML.Activity_Nodes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Node
             (Self.Id)));
   end Get_Node;

   --------------------
   -- Get_Represents --
   --------------------

   overriding function Get_Represents
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Represents
             (Self.Id)));
   end Get_Represents;

   --------------------
   -- Set_Represents --
   --------------------

   overriding procedure Set_Represents
    (Self : not null access UML_Activity_Partition_Proxy;
     To   : AMF.UML.Elements.UML_Element_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Represents
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Represents;

   ----------------------
   -- Get_Subpartition --
   ----------------------

   overriding function Get_Subpartition
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition is
   begin
      return
        AMF.UML.Activity_Partitions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Subpartition
             (Self.Id)));
   end Get_Subpartition;

   -------------------------
   -- Get_Super_Partition --
   -------------------------

   overriding function Get_Super_Partition
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activity_Partitions.UML_Activity_Partition_Access is
   begin
      return
        AMF.UML.Activity_Partitions.UML_Activity_Partition_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Super_Partition
             (Self.Id)));
   end Get_Super_Partition;

   -------------------------
   -- Set_Super_Partition --
   -------------------------

   overriding procedure Set_Super_Partition
    (Self : not null access UML_Activity_Partition_Proxy;
     To   : AMF.UML.Activity_Partitions.UML_Activity_Partition_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Super_Partition
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Super_Partition;

   ------------------------
   -- Get_Contained_Edge --
   ------------------------

   overriding function Get_Contained_Edge
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is
   begin
      return
        AMF.UML.Activity_Edges.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Contained_Edge
             (Self.Id)));
   end Get_Contained_Edge;

   ------------------------
   -- Get_Contained_Node --
   ------------------------

   overriding function Get_Contained_Node
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is
   begin
      return
        AMF.UML.Activity_Nodes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Contained_Node
             (Self.Id)));
   end Get_Contained_Node;

   ---------------------
   -- Get_In_Activity --
   ---------------------

   overriding function Get_In_Activity
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activities.UML_Activity_Access is
   begin
      return
        AMF.UML.Activities.UML_Activity_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_In_Activity
             (Self.Id)));
   end Get_In_Activity;

   ---------------------
   -- Set_In_Activity --
   ---------------------

   overriding procedure Set_In_Activity
    (Self : not null access UML_Activity_Partition_Proxy;
     To   : AMF.UML.Activities.UML_Activity_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_In_Activity
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_In_Activity;

   ------------------
   -- Get_Subgroup --
   ------------------

   overriding function Get_Subgroup
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group is
   begin
      return
        AMF.UML.Activity_Groups.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Subgroup
             (Self.Id)));
   end Get_Subgroup;

   ---------------------
   -- Get_Super_Group --
   ---------------------

   overriding function Get_Super_Group
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Activity_Groups.UML_Activity_Group_Access is
   begin
      return
        AMF.UML.Activity_Groups.UML_Activity_Group_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Super_Group
             (Self.Id)));
   end Get_Super_Group;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Activity_Partition_Proxy)
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
    (Self : not null access constant UML_Activity_Partition_Proxy)
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
    (Self : not null access UML_Activity_Partition_Proxy;
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
    (Self : not null access constant UML_Activity_Partition_Proxy)
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
    (Self : not null access UML_Activity_Partition_Proxy;
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
    (Self : not null access constant UML_Activity_Partition_Proxy)
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
    (Self : not null access constant UML_Activity_Partition_Proxy)
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
    (Self : not null access constant UML_Activity_Partition_Proxy)
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
    (Self : not null access UML_Activity_Partition_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Visibility
       (Self.Id, To);
   end Set_Visibility;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Activity_Partition_Proxy)
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
    (Self : not null access constant UML_Activity_Partition_Proxy)
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
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Activity_Partition_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Activity_Partition_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Activity_Partition_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Activity_Partition_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Activity_Partition_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Activity_Partition_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Activity_Partition_Proxy.Separator";
      return Separator (Self);
   end Separator;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Activity_Partition_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Activity_Partition_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Activity_Partition_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Activity_Partitions;
