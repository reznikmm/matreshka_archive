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
with AMF.OCL.Ocl_Expressions.Collections;
with AMF.UML.Association_Classes;
with AMF.UML.Comments.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Properties;
with AMF.UML.String_Expressions;
with AMF.UML.Types;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.OCL_Association_Class_Call_Exps is

   ------------------------------------
   -- Get_Referred_Association_Class --
   ------------------------------------

   overriding function Get_Referred_Association_Class
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.UML.Association_Classes.UML_Association_Class_Access is
   begin
      return
        AMF.UML.Association_Classes.UML_Association_Class_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Referred_Association_Class
             (Self.Id)));
   end Get_Referred_Association_Class;

   ------------------------------------
   -- Set_Referred_Association_Class --
   ------------------------------------

   overriding procedure Set_Referred_Association_Class
    (Self : not null access OCL_Association_Class_Call_Exp_Proxy;
     To   : AMF.UML.Association_Classes.UML_Association_Class_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Referred_Association_Class
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Referred_Association_Class;

   -------------------
   -- Get_Qualifier --
   -------------------

   overriding function Get_Qualifier
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.OCL.Ocl_Expressions.Collections.Ordered_Set_Of_OCL_Ocl_Expression is
   begin
      return
        AMF.OCL.Ocl_Expressions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Qualifier
             (Self.Id)));
   end Get_Qualifier;

   ---------------------------
   -- Get_Navigation_Source --
   ---------------------------

   overriding function Get_Navigation_Source
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.UML.Properties.UML_Property_Access is
   begin
      return
        AMF.UML.Properties.UML_Property_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Navigation_Source
             (Self.Id)));
   end Get_Navigation_Source;

   ---------------------------
   -- Set_Navigation_Source --
   ---------------------------

   overriding procedure Set_Navigation_Source
    (Self : not null access OCL_Association_Class_Call_Exp_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Navigation_Source
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Navigation_Source;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access is
   begin
      return
        AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Source
             (Self.Id)));
   end Get_Source;

   ----------------
   -- Set_Source --
   ----------------

   overriding procedure Set_Source
    (Self : not null access OCL_Association_Class_Call_Exp_Proxy;
     To   : AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Source
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Source;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access OCL_Association_Class_Call_Exp_Proxy;
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
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access OCL_Association_Class_Call_Exp_Proxy;
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
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access OCL_Association_Class_Call_Exp_Proxy;
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
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access OCL_Association_Class_Call_Exp_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.OCL_Attributes.Internal_Set_Visibility
       (Self.Id, To);
   end Set_Visibility;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
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
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Association_Class_Call_Exp_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Association_Class_Call_Exp_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Association_Class_Call_Exp_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Association_Class_Call_Exp_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Association_Class_Call_Exp_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Association_Class_Call_Exp_Proxy.Separator";
      return Separator (Self);
   end Separator;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Association_Class_Call_Exp_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant OCL_Association_Class_Call_Exp_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure OCL_Association_Class_Call_Exp_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.OCL_Association_Class_Call_Exps;
