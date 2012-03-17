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

with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Visitors.CMOF_Iterators;
with AMF.Visitors.CMOF_Visitors;

package body AMF.Internals.CMOF_Properties is

   use AMF.Internals.Tables.CMOF_Attributes;
   use AMF.Internals.Element_Collections;
   use type Matreshka.Internals.Strings.Shared_String_Access;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant CMOF_Property_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class then
         AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class
          (Visitor).Enter_Property
            (AMF.CMOF.Properties.CMOF_Property_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant CMOF_Property_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class then
         AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class
          (Visitor).Leave_Property
            (AMF.CMOF.Properties.CMOF_Property_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant CMOF_Property_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class then
         AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class
          (Iterator).Visit_Property
            (Visitor,
             AMF.CMOF.Properties.CMOF_Property_Access (Self),
             Control);
      end if;
   end Visit_Element;

   ---------------------
   -- Get_Association --
   ---------------------

   overriding function Get_Association
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Associations.CMOF_Association_Access is
   begin
      return
        AMF.CMOF.Associations.CMOF_Association_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Association (Self.Id)));
   end Get_Association;

   ---------------
   -- Get_Class --
   ---------------

   overriding function Get_Class
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Classes.CMOF_Class_Access is
   begin
      return
        AMF.CMOF.Classes.CMOF_Class_Access
         (AMF.Internals.Helpers.To_Element (Internal_Get_Class (Self.Id)));
   end Get_Class;

   ------------------
   -- Get_Datatype --
   ------------------

   overriding function Get_Datatype
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Data_Types.CMOF_Data_Type_Access is
   begin
      return
        AMF.CMOF.Data_Types.CMOF_Data_Type_Access
         (AMF.Internals.Helpers.To_Element (Internal_Get_Datatype (Self.Id)));
   end Get_Datatype;

   -----------------
   -- Get_Default --
   -----------------

   overriding function Get_Default
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_String
   is
      Aux : constant Matreshka.Internals.Strings.Shared_String_Access
        := Internal_Get_Default (Self.Id);

   begin
      if Aux = null then
         return (Is_Empty => True);

      else
         return (False, League.Strings.Internals.Create (Aux));
      end if;
   end Get_Default;

   ----------------------
   -- Get_Is_Composite --
   ----------------------

   overriding function Get_Is_Composite
    (Self : not null access constant CMOF_Property_Proxy) return Boolean is
   begin
      return Internal_Get_Is_Composite (Self.Id);
   end Get_Is_Composite;

   --------------------
   -- Get_Is_Derived --
   --------------------

   overriding function Get_Is_Derived
    (Self : not null access constant CMOF_Property_Proxy) return Boolean is
   begin
      return Internal_Get_Is_Derived (Self.Id);
   end Get_Is_Derived;

   --------------------------
   -- Get_Is_Derived_Union --
   --------------------------

   overriding function Get_Is_Derived_Union
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean is
   begin
      return Internal_Get_Is_Derived_Union (Self.Id);
   end Get_Is_Derived_Union;

   ----------------------
   -- Get_Is_Read_Only --
   ----------------------

   overriding function Get_Is_Read_Only
    (Self : not null access constant CMOF_Property_Proxy) return Boolean is
   begin
      return Internal_Get_Is_Read_Only (Self.Id);
   end Get_Is_Read_Only;

   ------------------
   -- Get_Opposite --
   ------------------

   overriding function Get_Opposite
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.CMOF_Property_Access is
   begin
      return
        AMF.CMOF.Properties.CMOF_Property_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Opposite (Self.Id)));
   end Get_Opposite;

   ----------------------------
   -- Get_Owning_Association --
   ----------------------------

   overriding function Get_Owning_Association
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Associations.CMOF_Association_Access is
   begin
      return
        AMF.CMOF.Associations.CMOF_Association_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Owning_Association (Self.Id)));
   end Get_Owning_Association;

   ----------------------------
   -- Get_Redefined_Property --
   ----------------------------

   overriding function Get_Redefined_Property
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property is
   begin
      return
        AMF.CMOF.Properties.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Redefined_Property (Self.Id)));
   end Get_Redefined_Property;

   ----------------------------
   -- Get_Subsetted_Property --
   ----------------------------

   overriding function Get_Subsetted_Property
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property is
   begin
      return
        AMF.CMOF.Properties.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Subsetted_Property (Self.Id)));
   end Get_Subsetted_Property;

   ---------------------
   -- Set_Association --
   ---------------------

   overriding procedure Set_Association
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Associations.CMOF_Association_Access) is
   begin
      raise Program_Error;
--      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Association
--       (Self.Id,
--        AMF.Internals.Helpers.To_Element
--         (AMF.Elements.Element_Access (To)));
   end Set_Association;

   -----------------
   -- Set_Default --
   -----------------

   overriding procedure Set_Default
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_String) is
   begin
      if To.Is_Empty then
         Internal_Set_Default (Self.Id, null);

      else
         Internal_Set_Default
          (Self.Id, League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Default;

   ----------------------
   -- Set_Is_Composite --
   ----------------------

   overriding procedure Set_Is_Composite
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean) is
   begin
      Internal_Set_Is_Composite (Self.Id, To);
   end Set_Is_Composite;

   --------------------
   -- Set_Is_Derived --
   --------------------

   overriding procedure Set_Is_Derived
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean) is
   begin
      Internal_Set_Is_Derived (Self.Id, To);
   end Set_Is_Derived;

   --------------------------
   -- Set_Is_Derived_Union --
   --------------------------

   overriding procedure Set_Is_Derived_Union
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean) is
   begin
      Internal_Set_Is_Derived_Union (Self.Id, To);
   end Set_Is_Derived_Union;

   ----------------------
   -- Set_Is_Read_Only --
   ----------------------

   overriding procedure Set_Is_Read_Only
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean) is
   begin
      Internal_Set_Is_Read_Only (Self.Id, To);
   end Set_Is_Read_Only;

   ---------------
   -- Set_Lower --
   ---------------

   overriding procedure Set_Lower
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_Integer) is
   begin
      Internal_Set_Lower (Self.Id, To);
   end Set_Lower;

   ---------------
   -- Set_Upper --
   ---------------

   overriding procedure Set_Upper
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_Unlimited_Natural) is
   begin
      Internal_Set_Upper (Self.Id, To);
   end Set_Upper;


   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error;
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   ---------------------------
   -- Includes_Multiplicity --
   ---------------------------

   overriding function Includes_Multiplicity
     (Self : not null access constant CMOF_Property_Proxy;
      M : AMF.CMOF.Multiplicity_Elements.CMOF_Multiplicity_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Multiplicity unimplemented");
      raise Program_Error;
      return Includes_Multiplicity (Self, M);
   end Includes_Multiplicity;

   --------------------------
   -- Includes_Cardinality --
   --------------------------

   overriding function Includes_Cardinality
     (Self : not null access constant CMOF_Property_Proxy;
      C : Integer)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Cardinality unimplemented");
      raise Program_Error;
      return Includes_Cardinality (Self, C);
   end Includes_Cardinality;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
     (Self : not null access constant CMOF_Property_Proxy)
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
     (Self : not null access constant CMOF_Property_Proxy)
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
     (Self : not null access constant CMOF_Property_Proxy;
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
     (Self : not null access constant CMOF_Property_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error;
      return Qualified_Name (Self);
   end Qualified_Name;

   -----------------
   -- Set_Is_Leaf --
   -----------------

   overriding procedure Set_Is_Leaf
     (Self : not null access CMOF_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Leaf unimplemented");
      raise Program_Error;
   end Set_Is_Leaf;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
     (Self : not null access constant CMOF_Property_Proxy;
      Redefined : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error;
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   ---------------
   -- Set_Class --
   ---------------

   overriding procedure Set_Class
     (Self : not null access CMOF_Property_Proxy;
      To   : AMF.CMOF.Classes.CMOF_Class_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Class unimplemented");
      raise Program_Error;
   end Set_Class;

   ----------------------------
   -- Set_Owning_Association --
   ----------------------------

   overriding procedure Set_Owning_Association
     (Self : not null access CMOF_Property_Proxy;
      To   : AMF.CMOF.Associations.CMOF_Association_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Owning_Association unimplemented");
      raise Program_Error;
   end Set_Owning_Association;

   ------------------
   -- Set_Opposite --
   ------------------

   overriding procedure Set_Opposite
     (Self : not null access CMOF_Property_Proxy;
      To   : AMF.CMOF.Properties.CMOF_Property_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Opposite unimplemented");
      raise Program_Error;
   end Set_Opposite;

   ------------------
   -- Set_Datatype --
   ------------------

   overriding procedure Set_Datatype
     (Self : not null access CMOF_Property_Proxy;
      To   : AMF.CMOF.Data_Types.CMOF_Data_Type_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Datatype unimplemented");
      raise Program_Error;
   end Set_Datatype;

   --------------
   -- Opposite --
   --------------

   overriding function Opposite
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Properties.CMOF_Property_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Opposite unimplemented");
      raise Program_Error;
      return Opposite (Self);
   end Opposite;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
     (Self : not null access constant CMOF_Property_Proxy;
      Redefinee : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error;
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   ------------------------
   -- Subsetting_Context --
   ------------------------

   overriding function Subsetting_Context
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Subsetting_Context unimplemented");
      raise Program_Error;
      return Subsetting_Context (Self);
   end Subsetting_Context;

   ------------------
   -- Is_Navigable --
   ------------------

   overriding function Is_Navigable
     (Self : not null access constant CMOF_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Navigable unimplemented");
      raise Program_Error;
      return Is_Navigable (Self);
   end Is_Navigable;

   ------------------
   -- Is_Attribute --
   ------------------

   overriding function Is_Attribute
     (Self : not null access constant CMOF_Property_Proxy;
      P : AMF.CMOF.Properties.CMOF_Property_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Attribute unimplemented");
      raise Program_Error;
      return Is_Attribute (Self, P);
   end Is_Attribute;

end AMF.Internals.CMOF_Properties;
