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
with AMF.CMOF.Holders.Parameter_Direction_Kinds;
with AMF.CMOF.Holders.Visibility_Kinds;
with AMF.Internals.Elements;
with AMF.Internals.Extents;
with AMF.Internals.Helpers;
with AMF.Internals.Links;
with AMF.Internals.Listener_Registry;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Metamodel;

package body AMF.Internals.Factories.CMOF_Factories is

   In_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("in");
   Inout_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("inout");
   Out_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("out");
   Return_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("return");

   Public_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("public");
   Private_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("private");
   Protected_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("protected");
   Package_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("package");

   function Convert_Boolean_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Boolean_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Integer_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Integer_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_String_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_String_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Unlimited_Natural_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Unlimited_Natural_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   -----------------
   -- Constructor --
   -----------------

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access is
   begin
      return new CMOF_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access CMOF_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Boolean then
         return Convert_Boolean_To_String (Value);

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Integer then
         return Convert_Integer_To_String (Value);

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Parameter_Direction_Kind then
         declare
            Item : constant AMF.CMOF.CMOF_Parameter_Direction_Kind
              := AMF.CMOF.Holders.Parameter_Direction_Kinds.Element (Value);

         begin
            case Item is
               when AMF.CMOF.In_Parameter =>
                  return In_Img;

               when AMF.CMOF.In_Out_Parameter =>
                  return Inout_Img;

               when AMF.CMOF.Out_Parameter =>
                  return Out_Img;

               when AMF.CMOF.Return_Parameter =>
                  return Return_Img;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_String then
         return Convert_String_To_String (Value);

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Unlimited_Natural then
         return Convert_Unlimited_Natural_To_String (Value);

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Visibility_Kind then
         declare
            Item : constant AMF.CMOF.CMOF_Visibility_Kind
              := AMF.CMOF.Holders.Visibility_Kinds.Element (Value);

         begin
            case Item is
               when AMF.CMOF.Public_Visibility =>
                  return Public_Img;

               when AMF.CMOF.Private_Visibility =>
                  return Private_Img;

               when AMF.CMOF.Protected_Visibility =>
                  return Protected_Img;

               when AMF.CMOF.Package_Visibility =>
                  return Package_Img;
            end case;
         end;

      else
         raise Program_Error;
      end if;
   end Convert_To_String;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access CMOF_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Meta_Class.all).Element;
      Element : AMF.Internals.AMF_Element;

   begin
      if MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Association then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Class then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Comment then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Constraint then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Data_Type then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Data_Type;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Element_Import then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Element_Import;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Enumeration then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Enumeration_Literal then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Expression then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Expression;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Opaque_Expression then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Operation then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package_Import then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package_Import;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package_Merge then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package_Merge;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Parameter then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Primitive_Type then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Property then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;

      elsif MC = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Tag then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;

      else
         raise Program_Error;
      end if;

      AMF.Internals.Extents.Internal_Append (Self.Extent, Element);
      AMF.Internals.Listener_Registry.Notify_Instance_Create
       (AMF.Internals.Helpers.To_Element (Element));

      return AMF.Internals.Helpers.To_Element (Element);
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   overriding function Create_From_String
    (Self      : not null access CMOF_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      pragma Unreferenced (Self);

      use type League.Strings.Universal_String;

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Boolean then
         return Create_Boolean_From_String (Image);

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Integer then
         return Create_Integer_From_String (Image);

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Parameter_Direction_Kind then
         if Image = In_Img then
            return
              AMF.CMOF.Holders.Parameter_Direction_Kinds.To_Holder
               (AMF.CMOF.In_Parameter);

         elsif Image = Inout_Img then
            return
              AMF.CMOF.Holders.Parameter_Direction_Kinds.To_Holder
               (AMF.CMOF.In_Out_Parameter);

         elsif Image = Out_Img then
            return
              AMF.CMOF.Holders.Parameter_Direction_Kinds.To_Holder
               (AMF.CMOF.Out_Parameter);

         elsif Image = Return_Img then
            return
              AMF.CMOF.Holders.Parameter_Direction_Kinds.To_Holder
               (AMF.CMOF.Return_Parameter);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_String then
         return Create_String_From_String (Image);

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Unlimited_Natural then
         return Create_Unlimited_Natural_From_String (Image);

      elsif DT = AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Visibility_Kind then
         if Image = Public_Img then
            return
              AMF.CMOF.Holders.Visibility_Kinds.To_Holder
               (AMF.CMOF.Public_Visibility);

         elsif Image = Private_Img then
            return
              AMF.CMOF.Holders.Visibility_Kinds.To_Holder
               (AMF.CMOF.Private_Visibility);

         elsif Image = Protected_Img then
            return
              AMF.CMOF.Holders.Visibility_Kinds.To_Holder
               (AMF.CMOF.Protected_Visibility);

         elsif Image = Package_Img then
            return
              AMF.CMOF.Holders.Visibility_Kinds.To_Holder
               (AMF.CMOF.Package_Visibility);

         else
            raise Constraint_Error;
         end if;

      else
         raise Program_Error;
      end if;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   overriding function Create_Link
    (Self           : not null access CMOF_Factory;
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
       return not null AMF.Links.Link_Access
   is
      pragma Unreferenced (Self);

   begin
      return
        AMF.Internals.Links.Proxy
         (AMF.Internals.Links.Create_Link
           (AMF.Internals.Elements.Element_Base'Class
             (Association.all).Element,
            AMF.Internals.Helpers.To_Element (First_Element),
            AMF.Internals.Helpers.To_Element (Second_Element)));
   end Create_Link;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant CMOF_Factory)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package
   is
      pragma Unreferenced (Self);

   begin
      return Result : AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package do
         Result.Add (Get_Package);
      end return;
   end Get_Package;

   -----------------
   -- Get_Package --
   -----------------

   function Get_Package return not null AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.CMOF_Metamodel.MM_CMOF_CMOF));
   end Get_Package;

   ------------------------
   -- Create_Association --
   ------------------------

   overriding function Create_Association
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Associations.CMOF_Association_Access is
   begin
      return
        AMF.CMOF.Associations.CMOF_Association_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Association))));
   end Create_Association;

   ------------------
   -- Create_Class --
   ------------------

   overriding function Create_Class
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Classes.CMOF_Class_Access is
   begin
      return
        AMF.CMOF.Classes.CMOF_Class_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Class))));
   end Create_Class;

   --------------------
   -- Create_Comment --
   --------------------

   overriding function Create_Comment
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Comments.CMOF_Comment_Access is
   begin
      return
        AMF.CMOF.Comments.CMOF_Comment_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Comment))));
   end Create_Comment;

   -----------------------
   -- Create_Constraint --
   -----------------------

   overriding function Create_Constraint
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Constraints.CMOF_Constraint_Access is
   begin
      return
        AMF.CMOF.Constraints.CMOF_Constraint_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Constraint))));
   end Create_Constraint;

   ----------------------
   -- Create_Data_Type --
   ----------------------

   overriding function Create_Data_Type
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Data_Types.CMOF_Data_Type_Access is
   begin
      return
        AMF.CMOF.Data_Types.CMOF_Data_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Data_Type))));
   end Create_Data_Type;

   ---------------------------
   -- Create_Element_Import --
   ---------------------------

   overriding function Create_Element_Import
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Element_Imports.CMOF_Element_Import_Access is
   begin
      return
        AMF.CMOF.Element_Imports.CMOF_Element_Import_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Element_Import))));
   end Create_Element_Import;

   ------------------------
   -- Create_Enumeration --
   ------------------------

   overriding function Create_Enumeration
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Enumerations.CMOF_Enumeration_Access is
   begin
      return
        AMF.CMOF.Enumerations.CMOF_Enumeration_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Enumeration))));
   end Create_Enumeration;

   --------------------------------
   -- Create_Enumeration_Literal --
   --------------------------------

   overriding function Create_Enumeration_Literal
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access is
   begin
      return
        AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Enumeration_Literal))));
   end Create_Enumeration_Literal;

   -----------------------
   -- Create_Expression --
   -----------------------

   overriding function Create_Expression
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Expressions.CMOF_Expression_Access is
   begin
      return
        AMF.CMOF.Expressions.CMOF_Expression_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Expression))));
   end Create_Expression;

   ------------------------------
   -- Create_Opaque_Expression --
   ------------------------------

   overriding function Create_Opaque_Expression
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access is
   begin
      return
        AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Opaque_Expression))));
   end Create_Opaque_Expression;

   ----------------------
   -- Create_Operation --
   ----------------------

   overriding function Create_Operation
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Operations.CMOF_Operation_Access is
   begin
      return
        AMF.CMOF.Operations.CMOF_Operation_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Operation))));
   end Create_Operation;

   --------------------
   -- Create_Package --
   --------------------

   overriding function Create_Package
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package))));
   end Create_Package;

   ---------------------------
   -- Create_Package_Import --
   ---------------------------

   overriding function Create_Package_Import
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Package_Imports.CMOF_Package_Import_Access is
   begin
      return
        AMF.CMOF.Package_Imports.CMOF_Package_Import_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package_Import))));
   end Create_Package_Import;

   --------------------------
   -- Create_Package_Merge --
   --------------------------

   overriding function Create_Package_Merge
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access is
   begin
      return
        AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package_Merge))));
   end Create_Package_Merge;

   ----------------------
   -- Create_Parameter --
   ----------------------

   overriding function Create_Parameter
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Parameters.CMOF_Parameter_Access is
   begin
      return
        AMF.CMOF.Parameters.CMOF_Parameter_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Parameter))));
   end Create_Parameter;

   ---------------------------
   -- Create_Primitive_Type --
   ---------------------------

   overriding function Create_Primitive_Type
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access is
   begin
      return
        AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Primitive_Type))));
   end Create_Primitive_Type;

   ---------------------
   -- Create_Property --
   ---------------------

   overriding function Create_Property
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Properties.CMOF_Property_Access is
   begin
      return
        AMF.CMOF.Properties.CMOF_Property_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Property))));
   end Create_Property;

   ----------------
   -- Create_Tag --
   ----------------

   overriding function Create_Tag
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Tags.CMOF_Tag_Access is
   begin
      return
        AMF.CMOF.Tags.CMOF_Tag_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Tag))));
   end Create_Tag;

end AMF.Internals.Factories.CMOF_Factories;
