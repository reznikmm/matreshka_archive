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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings;
with League.Strings.Internals;

with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Visitors.CMOF_Iterators;
with AMF.Visitors.CMOF_Visitors;

package body AMF.Internals.CMOF_Packages is

   use AMF.Internals.Tables.CMOF_Attributes;
   use type Matreshka.Internals.Strings.Shared_String_Access;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant CMOF_Package_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class then
         AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class
          (Visitor).Enter_Package
            (AMF.CMOF.Packages.CMOF_Package_Access (Self),
           Control);
      end if;
   end Enter_Element;

   ------------------------
   -- Get_Nested_Package --
   ------------------------

   overriding function Get_Nested_Package
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package is
   begin
      return
        AMF.CMOF.Packages.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Nested_Package (Self.Id)));
   end Get_Nested_Package;

   -------------------------
   -- Get_Nesting_Package --
   -------------------------

   overriding function Get_Nesting_Package
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Nesting_Package (Self.Id)));
   end Get_Nesting_Package;

   --------------------
   -- Get_Owned_Type --
   --------------------

   overriding function Get_Owned_Type
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Types.Collections.Set_Of_CMOF_Type is
   begin
      return
        AMF.CMOF.Types.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Owned_Type (Self.Id)));
   end Get_Owned_Type;

   -----------------------
   -- Get_Package_Merge --
   -----------------------

   overriding function Get_Package_Merge
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Package_Merges.Collections.Set_Of_CMOF_Package_Merge is
   begin
      return
        AMF.CMOF.Package_Merges.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Package_Merge (Self.Id)));
   end Get_Package_Merge;

   --------------------------
   -- Get_Packaged_Element --
   --------------------------

   overriding function Get_Packaged_Element
    (Self : not null access constant CMOF_Package_Proxy)
       return
         AMF.CMOF.Packageable_Elements.Collections.
           Set_Of_CMOF_Packageable_Element is
   begin
      return
        AMF.CMOF.Packageable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Packaged_Element (Self.Id)));
   end Get_Packaged_Element;

   -------------
   -- Get_Uri --
   -------------

   overriding function Get_Uri
    (Self : not null access constant CMOF_Package_Proxy)
       return Optional_String
   is
      Aux : constant Matreshka.Internals.Strings.Shared_String_Access
        := Internal_Get_Uri (Self.Id);

   begin
      if Aux = null then
         return (Is_Empty => True);

      else
         return (False, League.Strings.Internals.Create (Aux));
      end if;
   end Get_Uri;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant CMOF_Package_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class then
         AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class
          (Visitor).Leave_Package
            (AMF.CMOF.Packages.CMOF_Package_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Package_Proxy) return Boolean
   is
      pragma Unreferenced (Self);

      --  [UML241] 7.3.38 Package (from Kernel)
      --
      --   The query mustBeOwned() indicates whether elements of this type must
      --   have an owner.
      --
      --   Package::mustBeOwned() : Boolean
      --   mustBeOwned = false

   begin
      return False;
   end Must_Be_Owned;

   -------------
   -- Set_Uri --
   -------------

   overriding procedure Set_Uri
    (Self : not null access CMOF_Package_Proxy;
     To   : Optional_String) is
   begin
      if To.Is_Empty then
         Internal_Set_Uri (Self.Id, null);

      else
         Internal_Set_Uri
          (Self.Id, League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Uri;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant CMOF_Package_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class then
         AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class
          (Iterator).Visit_Package
            (Visitor,
             AMF.CMOF.Packages.CMOF_Package_Access (Self),
             Control);
      end if;
   end Visit_Element;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant CMOF_Package_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error;
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
     (Self : not null access constant CMOF_Package_Proxy)
      return Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Qualified_Name unimplemented");
      raise Program_Error;
      return Get_Qualified_Name (Self);
   end Get_Qualified_Name;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant CMOF_Package_Proxy)
      return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error;
      return All_Namespaces (Self);
   end All_Namespaces;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
     (Self : not null access constant CMOF_Package_Proxy;
      N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
      Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error;
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
     (Self : not null access constant CMOF_Package_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error;
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------------
   -- Imported_Member --
   ---------------------

   overriding function Imported_Member
     (Self : not null access constant CMOF_Package_Proxy)
      return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Imported_Member unimplemented");
      raise Program_Error;
      return Imported_Member (Self);
   end Imported_Member;

   -------------------------
   -- Get_Names_Of_Member --
   -------------------------

   overriding function Get_Names_Of_Member
    (Self : not null access constant CMOF_Package_Proxy;
     Element : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Names_Of_Member unimplemented");
      raise Program_Error;
      return Get_Names_Of_Member (Self, Element);
   end Get_Names_Of_Member;

   --------------------
   -- Import_Members --
   --------------------

   overriding function Import_Members
     (Self : not null access constant CMOF_Package_Proxy;
      Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
      return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Import_Members unimplemented");
      raise Program_Error;
      return Import_Members (Self, Imps);
   end Import_Members;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
     (Self : not null access constant CMOF_Package_Proxy;
      Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
      return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exclude_Collisions unimplemented");
      raise Program_Error;
      return Exclude_Collisions (Self, Imps);
   end Exclude_Collisions;

   ---------------------------------
   -- Members_Are_Distinguishable --
   ---------------------------------

   overriding function Members_Are_Distinguishable
     (Self : not null access constant CMOF_Package_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Members_Are_Distinguishable unimplemented");
      raise Program_Error;
      return Members_Are_Distinguishable (Self);
   end Members_Are_Distinguishable;

   -------------------------
   -- Set_Nesting_Package --
   -------------------------

   overriding procedure Set_Nesting_Package
     (Self : not null access CMOF_Package_Proxy;
      To   : AMF.CMOF.Packages.CMOF_Package_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Nesting_Package unimplemented");
      raise Program_Error;
   end Set_Nesting_Package;

   ---------------------
   -- Visible_Members --
   ---------------------

   overriding function Visible_Members
     (Self : not null access constant CMOF_Package_Proxy)
      return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Visible_Members unimplemented");
      raise Program_Error;
      return Visible_Members (Self);
   end Visible_Members;

   -------------------
   -- Makes_Visible --
   -------------------

   overriding function Makes_Visible
     (Self : not null access constant CMOF_Package_Proxy;
      El : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Makes_Visible unimplemented");
      raise Program_Error;
      return Makes_Visible (Self, El);
   end Makes_Visible;

end AMF.Internals.CMOF_Packages;
