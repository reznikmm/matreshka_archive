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
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with AMF.Visitors.UML_Iterators;
with AMF.Visitors.UML_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UML_Durations is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Duration_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Duration
            (AMF.UML.Durations.UML_Duration_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Duration_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Duration
            (AMF.UML.Durations.UML_Duration_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Duration_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Duration
            (Visitor,
             AMF.UML.Durations.UML_Duration_Access (Self),
             Control);
      end if;
   end Visit_Element;

   --------------
   -- Get_Expr --
   --------------

   overriding function Get_Expr
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Expr
             (Self.Element)));
   end Get_Expr;

   --------------
   -- Set_Expr --
   --------------

   overriding procedure Set_Expr
    (Self : not null access UML_Duration_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Expr
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Expr;

   ---------------------
   -- Get_Observation --
   ---------------------

   overriding function Get_Observation
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.UML.Observations.Collections.Set_Of_UML_Observation is
   begin
      return
        AMF.UML.Observations.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Observation
             (Self.Element)));
   end Get_Observation;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.UML.Types.UML_Type_Access is
   begin
      return
        AMF.UML.Types.UML_Type_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Type
             (Self.Element)));
   end Get_Type;

   --------------
   -- Set_Type --
   --------------

   overriding procedure Set_Type
    (Self : not null access UML_Duration_Proxy;
     To   : AMF.UML.Types.UML_Type_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Type
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Type;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency is
   begin
      return
        AMF.UML.Dependencies.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Client_Dependency
             (Self.Element)));
   end Get_Client_Dependency;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Duration_Proxy)
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
    (Self : not null access UML_Duration_Proxy;
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
    (Self : not null access constant UML_Duration_Proxy)
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
    (Self : not null access constant UML_Duration_Proxy)
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

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Duration_Proxy)
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
    (Self : not null access UML_Duration_Proxy;
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
    (Self : not null access constant UML_Duration_Proxy)
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
    (Self : not null access UML_Duration_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   -------------------
   -- Boolean_Value --
   -------------------

   overriding function Boolean_Value
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.Optional_Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Boolean_Value unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Boolean_Value";
      return Boolean_Value (Self);
   end Boolean_Value;

   -------------------
   -- Integer_Value --
   -------------------

   overriding function Integer_Value
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.Optional_Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Integer_Value unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Integer_Value";
      return Integer_Value (Self);
   end Integer_Value;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Duration_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Is_Compatible_With";
      return Is_Compatible_With (Self, P);
   end Is_Compatible_With;

   -------------------
   -- Is_Computable --
   -------------------

   overriding function Is_Computable
    (Self : not null access constant UML_Duration_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Computable unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Is_Computable";
      return Is_Computable (Self);
   end Is_Computable;

   -------------
   -- Is_Null --
   -------------

   overriding function Is_Null
    (Self : not null access constant UML_Duration_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Null unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Is_Null";
      return Is_Null (Self);
   end Is_Null;

   ----------------
   -- Real_Value --
   ----------------

   overriding function Real_Value
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.Optional_Real is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Real_Value unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Real_Value";
      return Real_Value (Self);
   end Real_Value;

   ------------------
   -- String_Value --
   ------------------

   overriding function String_Value
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.Optional_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "String_Value unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.String_Value";
      return String_Value (Self);
   end String_Value;

   ---------------------
   -- Unlimited_Value --
   ---------------------

   overriding function Unlimited_Value
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Unlimited_Value unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Unlimited_Value";
      return Unlimited_Value (Self);
   end Unlimited_Value;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Duration_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Duration_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Duration_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------------------
   -- Is_Template_Parameter --
   ---------------------------

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Duration_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Duration_Proxy.Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

end AMF.Internals.UML_Durations;
