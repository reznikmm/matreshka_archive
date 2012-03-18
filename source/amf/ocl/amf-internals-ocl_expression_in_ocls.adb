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
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.OCL_Attributes;
with AMF.OCL.Ocl_Expressions;
with AMF.OCL.Variables.Collections;
with AMF.String_Collections;
with AMF.UML.Behaviors;
with AMF.UML.Classifiers;
with AMF.UML.Comments.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Parameters;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UML.Types;
with AMF.Visitors.OCL_Iterators;
with AMF.Visitors.OCL_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.OCL_Expression_In_Ocls is

   -------------------------
   -- Get_Body_Expression --
   -------------------------

   overriding function Get_Body_Expression
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access is
   begin
      return
        AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Body_Expression
             (Self.Id)));
   end Get_Body_Expression;

   -------------------------
   -- Set_Body_Expression --
   -------------------------

   overriding procedure Set_Body_Expression
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Body_Expression
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Body_Expression;

   --------------------------
   -- Get_Context_Variable --
   --------------------------

   overriding function Get_Context_Variable
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.OCL.Variables.OCL_Variable_Access is
   begin
      return
        AMF.OCL.Variables.OCL_Variable_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Context_Variable
             (Self.Id)));
   end Get_Context_Variable;

   --------------------------
   -- Set_Context_Variable --
   --------------------------

   overriding procedure Set_Context_Variable
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.OCL.Variables.OCL_Variable_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Context_Variable
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Context_Variable;

   -------------------------
   -- Get_Result_Variable --
   -------------------------

   overriding function Get_Result_Variable
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.OCL.Variables.OCL_Variable_Access is
   begin
      return
        AMF.OCL.Variables.OCL_Variable_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Result_Variable
             (Self.Id)));
   end Get_Result_Variable;

   -------------------------
   -- Set_Result_Variable --
   -------------------------

   overriding procedure Set_Result_Variable
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.OCL.Variables.OCL_Variable_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Result_Variable
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Result_Variable;

   ----------------------------
   -- Get_Parameter_Variable --
   ----------------------------

   overriding function Get_Parameter_Variable
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.OCL.Variables.Collections.Ordered_Set_Of_OCL_Variable is
   begin
      return
        AMF.OCL.Variables.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Parameter_Variable
             (Self.Id)));
   end Get_Parameter_Variable;

   ------------------------
   -- Get_Generated_Type --
   ------------------------

   overriding function Get_Generated_Type
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access is
   begin
      return
        AMF.UML.Classifiers.UML_Classifier_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Generated_Type
             (Self.Id)));
   end Get_Generated_Type;

   ------------------------
   -- Set_Generated_Type --
   ------------------------

   overriding procedure Set_Generated_Type
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Generated_Type
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Generated_Type;

   ------------------
   -- Get_Behavior --
   ------------------

   overriding function Get_Behavior
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Behavior
             (Self.Id)));
   end Get_Behavior;

   ------------------
   -- Set_Behavior --
   ------------------

   overriding procedure Set_Behavior
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Behavior
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Behavior;

   --------------
   -- Get_Body --
   --------------

   overriding function Get_Body
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.String_Collections.Sequence_Of_String is
   begin
      return X : AMF.String_Collections.Sequence_Of_String;
   end Get_Body;

   ------------------
   -- Get_Language --
   ------------------

   overriding function Get_Language
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.String_Collections.Ordered_Set_Of_String is
   begin
      return X : AMF.String_Collections.Ordered_Set_Of_String;
   end Get_Language;

   ----------------
   -- Get_Result --
   ----------------

   overriding function Get_Result
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Parameters.UML_Parameter_Access is
   begin
      return
        AMF.UML.Parameters.UML_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Result
             (Self.Id)));
   end Get_Result;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Types.UML_Type_Access is
   begin
      return
        AMF.UML.Types.UML_Type_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Type
             (Self.Id)));
   end Get_Type;

   --------------
   -- Set_Type --
   --------------

   overriding procedure Set_Type
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.UML.Types.UML_Type_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Type
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Type;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency is
   begin
      return
        AMF.UML.Dependencies.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Client_Dependency
             (Self.Id)));
   end Get_Client_Dependency;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.OCL_Attributes.Internal_Get_Name (Self.Id);

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
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.OCL_Attributes.Internal_Set_Name
          (Self.Id, null);

      else
         AMF.Internals.Tables.OCL_Attributes.Internal_Set_Name
          (Self.Id,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Name;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is
   begin
      return
        AMF.UML.String_Expressions.UML_String_Expression_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Name_Expression
             (Self.Id)));
   end Get_Name_Expression;

   -------------------------
   -- Set_Name_Expression --
   -------------------------

   overriding procedure Set_Name_Expression
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Name_Expression
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Name_Expression;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      return
        AMF.UML.Namespaces.UML_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Namespace
             (Self.Id)));
   end Get_Namespace;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.OCL_Attributes.Internal_Get_Qualified_Name (Self.Id);

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
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      return
        AMF.Internals.Tables.OCL_Attributes.Internal_Get_Visibility
         (Self.Id);
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Visibility
       (Self.Id, To);
   end Set_Visibility;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment is
   begin
      return
        AMF.UML.Comments.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Owned_Comment
             (Self.Id)));
   end Get_Owned_Comment;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Owned_Element
             (Self.Id)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.UML_Visibility_Kind is
   begin
      return
        AMF.Internals.Tables.OCL_Attributes.Internal_Get_Visibility
         (Self.Id).Value;
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.UML.UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Visibility
       (Self.Id, (False, To));
   end Set_Visibility;

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Owning_Template_Parameter
             (Self.Id)));
   end Get_Owning_Template_Parameter;

   -----------------------------------
   -- Set_Owning_Template_Parameter --
   -----------------------------------

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Owning_Template_Parameter
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Owning_Template_Parameter;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Template_Parameter
             (Self.Id)));
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
    (Self : not null access OCL_Expression_In_Ocl_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Template_Parameter
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   -----------------
   -- Is_Integral --
   -----------------

   overriding function Is_Integral
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Integral unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Is_Integral";
      return Is_Integral (Self);
   end Is_Integral;

   ---------------------
   -- Is_Non_Negative --
   ---------------------

   overriding function Is_Non_Negative
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Non_Negative unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Is_Non_Negative";
      return Is_Non_Negative (Self);
   end Is_Non_Negative;

   -----------------
   -- Is_Positive --
   -----------------

   overriding function Is_Positive
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Positive unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Is_Positive";
      return Is_Positive (Self);
   end Is_Positive;

   ------------
   -- Result --
   ------------

   overriding function Result
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Parameters.UML_Parameter_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Result unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Result";
      return Result (Self);
   end Result;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Value unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Value";
      return Value (Self);
   end Value;

   -------------------
   -- Boolean_Value --
   -------------------

   overriding function Boolean_Value
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.Optional_Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Boolean_Value unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Boolean_Value";
      return Boolean_Value (Self);
   end Boolean_Value;

   -------------------
   -- Integer_Value --
   -------------------

   overriding function Integer_Value
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.Optional_Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Integer_Value unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Integer_Value";
      return Integer_Value (Self);
   end Integer_Value;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Is_Compatible_With";
      return Is_Compatible_With (Self, P);
   end Is_Compatible_With;

   -------------------
   -- Is_Computable --
   -------------------

   overriding function Is_Computable
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Computable unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Is_Computable";
      return Is_Computable (Self);
   end Is_Computable;

   -------------
   -- Is_Null --
   -------------

   overriding function Is_Null
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Null unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Is_Null";
      return Is_Null (Self);
   end Is_Null;

   ----------------
   -- Real_Value --
   ----------------

   overriding function Real_Value
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.Optional_Real is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Real_Value unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Real_Value";
      return Real_Value (Self);
   end Real_Value;

   ------------------
   -- String_Value --
   ------------------

   overriding function String_Value
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.Optional_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "String_Value unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.String_Value";
      return String_Value (Self);
   end String_Value;

   ---------------------
   -- Unlimited_Value --
   ---------------------

   overriding function Unlimited_Value
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Unlimited_Value unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Unlimited_Value";
      return Unlimited_Value (Self);
   end Unlimited_Value;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Separator";
      return Separator (Self);
   end Separator;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   ---------------------------
   -- Is_Template_Parameter --
   ---------------------------

   overriding function Is_Template_Parameter
    (Self : not null access constant OCL_Expression_In_Ocl_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Expression_In_Ocl_Proxy.Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant OCL_Expression_In_Ocl_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.OCL_Visitors.OCL_Visitor'Class then
         AMF.Visitors.OCL_Visitors.OCL_Visitor'Class
          (Visitor).Enter_Expression_In_Ocl
            (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant OCL_Expression_In_Ocl_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.OCL_Visitors.OCL_Visitor'Class then
         AMF.Visitors.OCL_Visitors.OCL_Visitor'Class
          (Visitor).Leave_Expression_In_Ocl
            (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant OCL_Expression_In_Ocl_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.OCL_Iterators.OCL_Iterator'Class then
         AMF.Visitors.OCL_Iterators.OCL_Iterator'Class
          (Iterator).Visit_Expression_In_Ocl
            (Visitor,
             AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.OCL_Expression_In_Ocls;
