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
with AMF.Internals.Collections;
with CMOF.Internals.Attributes;
with CMOF.Internals.Collections;
with CMOF.Internals.Proxies;

package body AMF.Internals.CMOF_Properties is

   use Standard.CMOF.Internals.Attributes;
   use Standard.CMOF.Internals.Collections;

   ---------------------
   -- Get_Association --
   ---------------------

   overriding function Get_Association
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Associations.CMOF_Association_Access is
   begin
      return
        AMF.CMOF.Associations.CMOF_Association_Access
         (Standard.CMOF.Internals.Proxies.Get_Proxy
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
         (Standard.CMOF.Internals.Proxies.Get_Proxy
           (Internal_Get_Class (Self.Id)));
   end Get_Class;

   -----------------
   -- Get_Default --
   -----------------

   overriding function Get_Default
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_String is
   begin
      if Internal_Get_Default (Self.Id).Is_Empty then
         return (Is_Empty => True);

      else
         return Internal_Get_Default (Self.Id);
      end if;
   end Get_Default;

   --------------------
   -- Get_Is_Derived --
   --------------------

   overriding function Get_Is_Derived
    (Self : not null access constant CMOF_Property_Proxy) return Boolean is
   begin
      return Internal_Get_Is_Derived (Self.Id);
   end Get_Is_Derived;

   ----------------------
   -- Get_Is_Read_Only --
   ----------------------

   overriding function Get_Is_Read_Only
    (Self : not null access constant CMOF_Property_Proxy) return Boolean is
   begin
      return Internal_Get_Is_Read_Only (Self.Id);
   end Get_Is_Read_Only;

   ----------------------------
   -- Get_Owning_Association --
   ----------------------------

   overriding function Get_Owning_Association
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Associations.CMOF_Association_Access is
   begin
      return
        AMF.CMOF.Associations.CMOF_Association_Access
         (Standard.CMOF.Internals.Proxies.Get_Proxy
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
         (new CMOF_Collection'
               (AMF.Internals.Collections.Abstract_Collection with
                  Collection => Internal_Get_Redefined_Property (Self.Id)));
   end Get_Redefined_Property;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Element unimplemented");
      raise Program_Error;
      return Get_Owned_Element (Self);
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Elements.CMOF_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error;
      return Get_Owner (Self);
   end Get_Owner;

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

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
     (Self : not null access constant CMOF_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error;
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   --------------------
   -- Set_Is_Ordered --
   --------------------

   overriding procedure Set_Is_Ordered
     (Self : not null access CMOF_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Ordered unimplemented");
      raise Program_Error;
   end Set_Is_Ordered;

   -------------------
   -- Set_Is_Unique --
   -------------------

   overriding procedure Set_Is_Unique
     (Self : not null access CMOF_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Unique unimplemented");
      raise Program_Error;
   end Set_Is_Unique;

   ---------------
   -- Set_Lower --
   ---------------

   overriding procedure Set_Lower
     (Self : not null access CMOF_Property_Proxy;
      To   : Optional_Integer)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Lower unimplemented");
      raise Program_Error;
   end Set_Lower;

   ---------------
   -- Set_Upper --
   ---------------

   overriding procedure Set_Upper
     (Self : not null access CMOF_Property_Proxy;
      To   : Optional_Unlimited_Natural)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Upper unimplemented");
      raise Program_Error;
   end Set_Upper;

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

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
     (Self : not null access CMOF_Property_Proxy;
      To   : Optional_String)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Name unimplemented");
      raise Program_Error;
   end Set_Name;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
     (Self : not null access constant CMOF_Property_Proxy)
      return CMOF.Optional_CMOF_Visibility_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Visibility unimplemented");
      raise Program_Error;
      return Get_Visibility (Self);
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
     (Self : not null access CMOF_Property_Proxy;
      To   : CMOF.Optional_CMOF_Visibility_Kind)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Visibility unimplemented");
      raise Program_Error;
   end Set_Visibility;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Namespaces.CMOF_Namespace_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Namespace unimplemented");
      raise Program_Error;
      return Get_Namespace (Self);
   end Get_Namespace;

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

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
     (Self : not null access constant CMOF_Property_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error;
      return Separator (Self);
   end Separator;

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

   --------------
   -- Set_Type --
   --------------

   overriding procedure Set_Type
     (Self : not null access CMOF_Property_Proxy;
      To   : AMF.CMOF.Types.CMOF_Type_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Type unimplemented");
      raise Program_Error;
   end Set_Type;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefinition_Context unimplemented");
      raise Program_Error;
      return Get_Redefinition_Context (Self);
   end Get_Redefinition_Context;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Redefinable_Elements.Collections.Set_Of_CMOF_Redefinable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_Element unimplemented");
      raise Program_Error;
      return Get_Redefined_Element (Self);
   end Get_Redefined_Element;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
     (Self : not null access constant CMOF_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Leaf unimplemented");
      raise Program_Error;
      return Get_Is_Leaf (Self);
   end Get_Is_Leaf;

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

   ------------------------------
   -- Get_Featuring_Classifier --
   ------------------------------

   overriding function Get_Featuring_Classifier
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Featuring_Classifier unimplemented");
      raise Program_Error;
      return Get_Featuring_Classifier (Self);
   end Get_Featuring_Classifier;

   ----------------------
   -- Set_Is_Read_Only --
   ----------------------

   overriding procedure Set_Is_Read_Only
     (Self : not null access CMOF_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Read_Only unimplemented");
      raise Program_Error;
   end Set_Is_Read_Only;

   -----------------
   -- Set_Default --
   -----------------

   overriding procedure Set_Default
     (Self : not null access CMOF_Property_Proxy;
      To   : Optional_String)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Default unimplemented");
      raise Program_Error;
   end Set_Default;

   ----------------------
   -- Get_Is_Composite --
   ----------------------

   overriding function Get_Is_Composite
     (Self : not null access constant CMOF_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Composite unimplemented");
      raise Program_Error;
      return Get_Is_Composite (Self);
   end Get_Is_Composite;

   ----------------------
   -- Set_Is_Composite --
   ----------------------

   overriding procedure Set_Is_Composite
     (Self : not null access CMOF_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Composite unimplemented");
      raise Program_Error;
   end Set_Is_Composite;

   --------------------
   -- Set_Is_Derived --
   --------------------

   overriding procedure Set_Is_Derived
     (Self : not null access CMOF_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Derived unimplemented");
      raise Program_Error;
   end Set_Is_Derived;

   --------------------------
   -- Get_Is_Derived_Union --
   --------------------------

   overriding function Get_Is_Derived_Union
     (Self : not null access constant CMOF_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Derived_Union unimplemented");
      raise Program_Error;
      return Get_Is_Derived_Union (Self);
   end Get_Is_Derived_Union;

   --------------------------
   -- Set_Is_Derived_Union --
   --------------------------

   overriding procedure Set_Is_Derived_Union
     (Self : not null access CMOF_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Derived_Union unimplemented");
      raise Program_Error;
   end Set_Is_Derived_Union;

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

   ----------------------------
   -- Get_Subsetted_Property --
   ----------------------------

   overriding function Get_Subsetted_Property
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Subsetted_Property unimplemented");
      raise Program_Error;
      return Get_Subsetted_Property (Self);
   end Get_Subsetted_Property;

   ------------------
   -- Get_Opposite --
   ------------------

   overriding function Get_Opposite
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Properties.CMOF_Property_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Opposite unimplemented");
      raise Program_Error;
      return Get_Opposite (Self);
   end Get_Opposite;

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
   -- Get_Datatype --
   ------------------

   overriding function Get_Datatype
     (Self : not null access constant CMOF_Property_Proxy)
      return AMF.CMOF.Data_Types.CMOF_Data_Type_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Datatype unimplemented");
      raise Program_Error;
      return Get_Datatype (Self);
   end Get_Datatype;

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

   ---------------------
   -- Set_Association --
   ---------------------

   overriding procedure Set_Association
     (Self : not null access CMOF_Property_Proxy;
      To   : AMF.CMOF.Associations.CMOF_Association_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Association unimplemented");
      raise Program_Error;
   end Set_Association;

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
