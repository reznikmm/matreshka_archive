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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Strings.Wide_Wide_Fixed;

with AMF.Factories.Registry;
with CMOF.Internals.Attributes;
with CMOF.Internals.Collections;
with CMOF.Internals.Constructors;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Links;
with CMOF.Internals.Tables;
with AMF.Internals.CMOF_Associations;
with AMF.Internals.CMOF_Classes;
with AMF.Internals.CMOF_Comments;
with AMF.Internals.CMOF_Constraints;
with AMF.Internals.CMOF_Data_Types;
with AMF.Internals.CMOF_Element_Imports;
with AMF.Internals.CMOF_Elements;
with AMF.Internals.CMOF_Enumeration_Literals;
with AMF.Internals.CMOF_Enumerations;
with AMF.Internals.CMOF_Expressions;
with AMF.Internals.CMOF_Opaque_Expressions;
with AMF.Internals.CMOF_Operations;
with AMF.Internals.CMOF_Packages;
with AMF.Internals.CMOF_Package_Imports;
with AMF.Internals.CMOF_Package_Merges;
with AMF.Internals.CMOF_Parameters;
with AMF.Internals.CMOF_Primitive_Types;
with AMF.Internals.CMOF_Properties;

package body CMOF.Internals.Factories is

   use CMOF.Internals.Metamodel;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access CMOF_Factory;
     Extent     : CMOF.CMOF_Extent;
     Meta_Class : CMOF.CMOF_Class)
       return not null AMF.Elements.Element_Access
   is
      Result : AMF.Elements.Element_Access;

   begin
      --  Create corresponding proxy element.

      if Meta_Class = MC_CMOF_Association then
         Result :=
           new AMF.Internals.CMOF_Associations.CMOF_Association_Proxy'
                (Id =>
                   CMOF.Internals.Constructors.Create_Association (Extent));

      elsif Meta_Class = MC_CMOF_Class then
         Result :=
           new AMF.Internals.CMOF_Classes.CMOF_Class_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Class (Extent));

      elsif Meta_Class = MC_CMOF_Comment then
         Result :=
           new AMF.Internals.CMOF_Comments.CMOF_Comment_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Comment (Extent));

      elsif Meta_Class = MC_CMOF_Constraint then
         Result :=
           new AMF.Internals.CMOF_Constraints.CMOF_Constraint_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Constraint (Extent));

      elsif Meta_Class = MC_CMOF_Data_Type then
         Result :=
           new AMF.Internals.CMOF_Data_Types.CMOF_Data_Type_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Data_Type (Extent));

      elsif Meta_Class = MC_CMOF_Element_Import then
         Result :=
           new AMF.Internals.CMOF_Element_Imports.CMOF_Element_Import_Proxy'
                (Id =>
                   CMOF.Internals.Constructors.Create_Element_Import (Extent));

      elsif Meta_Class = MC_CMOF_Enumeration then
         Result :=
           new AMF.Internals.CMOF_Enumerations.CMOF_Enumeration_Proxy'
                (Id =>
                   CMOF.Internals.Constructors.Create_Enumeration (Extent));

      elsif Meta_Class = MC_CMOF_Enumeration_Literal then
         Result :=
           new AMF.Internals.CMOF_Enumeration_Literals.CMOF_Enumeration_Literal_Proxy'
                (Id =>
                   CMOF.Internals.Constructors.Create_Enumeration_Literal
                    (Extent));

      elsif Meta_Class = MC_CMOF_Expression then
         Result :=
           new AMF.Internals.CMOF_Expressions.CMOF_Expression_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Expression (Extent));

      elsif Meta_Class = MC_CMOF_Opaque_Expression then
         Result :=
           new AMF.Internals.CMOF_Opaque_Expressions.CMOF_Opaque_Expression_Proxy'
                (Id =>
                   CMOF.Internals.Constructors.Create_Opaque_Expression
                    (Extent));

      elsif Meta_Class = MC_CMOF_Operation then
         Result :=
           new AMF.Internals.CMOF_Operations.CMOF_Operation_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Operation (Extent));

      elsif Meta_Class = MC_CMOF_Package then
         Result :=
           new AMF.Internals.CMOF_Packages.CMOF_Package_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Package (Extent));

      elsif Meta_Class = MC_CMOF_Package_Import then
         Result :=
           new AMF.Internals.CMOF_Package_Imports.CMOF_Package_Import_Proxy'
                (Id =>
                   CMOF.Internals.Constructors.Create_Package_Import (Extent));

      elsif Meta_Class = MC_CMOF_Package_Merge then
         Result :=
           new AMF.Internals.CMOF_Package_Merges.CMOF_Package_Merge_Proxy'
                (Id =>
                   CMOF.Internals.Constructors.Create_Package_Merge (Extent));

      elsif Meta_Class = MC_CMOF_Parameter then
         Result :=
           new AMF.Internals.CMOF_Parameters.CMOF_Parameter_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Parameter (Extent));

      elsif Meta_Class = MC_CMOF_Primitive_Type then
         Result :=
           new AMF.Internals.CMOF_Primitive_Types.CMOF_Primitive_Type_Proxy'
                (Id =>
                   CMOF.Internals.Constructors.Create_Primitive_Type (Extent));

      elsif Meta_Class = MC_CMOF_Property then
         Result :=
           new AMF.Internals.CMOF_Properties.CMOF_Property_Proxy'
                (Id => CMOF.Internals.Constructors.Create_Property (Extent));

      else
         raise Program_Error with CMOF_Element'Image (Meta_Class);
      end if;

      --  Register proxy element.

      CMOF.Internals.Tables.Elements.Table
       (AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
         (Result.all).Id).Proxy := Result;

      return Result;
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   function Create_From_String
    (Self      : not null access CMOF_Factory;
     Data_Type : CMOF_Data_Type;
     Optional  : Boolean;
     Image     : League.Strings.Universal_String) return AMF.Values.Value
   is
      use type League.Strings.Universal_String;

   begin
      if Data_Type = MC_CMOF_Boolean then
         return
          (AMF.Values.Value_Boolean,
           Boolean'Wide_Wide_Value (Image.To_Wide_Wide_String));

      elsif Data_Type = MC_CMOF_Integer then
         if Optional then
            return
             (AMF.Values.Value_Optional_Integer,
              (False,
               Integer'Wide_Wide_Value (Image.To_Wide_Wide_String)));

         else
            return
             (AMF.Values.Value_Integer,
              Integer'Wide_Wide_Value (Image.To_Wide_Wide_String));
         end if;

      elsif Data_Type = MC_CMOF_Unlimited_Natural then
         if Optional then
            if Image = League.Strings.To_Universal_String ("*") then
               return
                (AMF.Values.Value_Optional_Unlimited_Natural,
                 (False, (Unlimited => True)));

            else
               return
                (AMF.Values.Value_Optional_Unlimited_Natural,
                 (False,
                  (False,
                   Natural'Wide_Wide_Value (Image.To_Wide_Wide_String))));
            end if;

         else
            if Image = League.Strings.To_Universal_String ("*") then
               return (AMF.Values.Value_Unlimited_Natural, (Unlimited => True));

            else
               return
                (AMF.Values.Value_Unlimited_Natural,
                 (False,
                  Natural'Wide_Wide_Value (Image.To_Wide_Wide_String)));
            end if;
         end if;

      elsif Data_Type = MC_CMOF_String then
         if Optional then
            return (AMF.Values.Value_Optional_String, (False, Image));

         else
            return (AMF.Values.Value_String, Image);
         end if;

      elsif Data_Type = MC_CMOF_Parameter_Direction_Kind then
         if Image = League.Strings.To_Universal_String ("in") then
            return
             (AMF.Values.Value_CMOF_Parameter_Direction_Kind,
              CMOF.In_Direction);

         elsif Image = League.Strings.To_Universal_String ("inout") then
            return
             (AMF.Values.Value_CMOF_Parameter_Direction_Kind,
              CMOF.In_Out_Direction);

         elsif Image = League.Strings.To_Universal_String ("out") then
            return
             (AMF.Values.Value_CMOF_Parameter_Direction_Kind,
              CMOF.Out_Direction);

         elsif Image = League.Strings.To_Universal_String ("return") then
            return
             (AMF.Values.Value_CMOF_Parameter_Direction_Kind,
              CMOF.Return_Direction);

         else
            raise Constraint_Error;
         end if;

      elsif Data_Type = MC_CMOF_Visibility_Kind then
         if Image = League.Strings.To_Universal_String ("public") then
            if Optional then
               return
                (AMF.Values.Value_Optional_CMOF_Visibility_Kind,
                 (False, CMOF.Public_Visibility));

            else
               return
                (AMF.Values.Value_CMOF_Visibility_Kind,
                 CMOF.Public_Visibility);
            end if;

         elsif Image = League.Strings.To_Universal_String ("private") then
            return
             (AMF.Values.Value_CMOF_Visibility_Kind,
              CMOF.Private_Visibility);

         elsif Image = League.Strings.To_Universal_String ("protected") then
            return
             (AMF.Values.Value_CMOF_Visibility_Kind,
              CMOF.Protected_Visibility);

         elsif Image = League.Strings.To_Universal_String ("package") then
            return
             (AMF.Values.Value_CMOF_Visibility_Kind,
              CMOF.Package_Visibility);

         else
            raise Constraint_Error;
         end if;

      else
         raise Program_Error with "Unknown CMOF data type";
      end if;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   procedure Create_Link
    (Self           : not null access CMOF_Factory;
     Association    : CMOF_Association;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
   is
      Member_End : constant Ordered_Set_Of_CMOF_Property
        := CMOF.Internals.Attributes.Internal_Get_Member_End (Association);

   begin
      --  XXX This implementation is limit links to connect elements from the
      --  same metamodel.

      CMOF.Internals.Links.Internal_Create_Link
       (Association,
        AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
         (First_Element.all).Id,
        CMOF.Internals.Collections.Element (Member_End, 1),
        AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
         (Second_Element.all).Id,
        CMOF.Internals.Collections.Element (Member_End, 2));
   end Create_Link;

   -----------------------
   -- Convert_To_String --
   -----------------------

   function Convert_To_String
    (Self      : not null access CMOF_Factory;
     Data_Type : CMOF_Data_Type;
     Value     : AMF.Values.Value) return League.Strings.Universal_String
   is
      use Ada.Strings;
      use Ada.Strings.Wide_Wide_Fixed;
      use type AMF.Values.Value_Kinds;

   begin
      if Data_Type = MC_CMOF_Boolean then
         if Value.Boolean_Value then
            return League.Strings.To_Universal_String ("true");

         else
            return League.Strings.To_Universal_String ("false");
         end if;

      elsif Data_Type = MC_CMOF_Integer then
         return
           League.Strings.To_Universal_String
            (Ada.Strings.Wide_Wide_Fixed.Trim
              (Integer'Wide_Wide_Image (Value.Integer_Value),
               Ada.Strings.Both));

      elsif Data_Type = MC_CMOF_Unlimited_Natural then
         if Value.Unlimited_Natural_Value.Unlimited then
            return League.Strings.To_Universal_String ("*");

         else
            return
              League.Strings.To_Universal_String
               (Ada.Strings.Wide_Wide_Fixed.Trim
                 (Natural'Wide_Wide_Image
                   (Value.Unlimited_Natural_Value.Value),
                  Ada.Strings.Both));
         end if;

      elsif Data_Type = MC_CMOF_String then
         if Value.Kind = AMF.Values.Value_Optional_String then
            return Value.Optional_String_Value.Value;

         else
            return Value.String_Value;
         end if;

      else
         return League.Strings.To_Universal_String ("Value must be here");
      end if;
   end Convert_To_String;

   Factory : aliased CMOF_Factory;

begin
   AMF.Factories.Registry.Register
    (League.Strings.To_Universal_String
      ("http://schema.omg.org/spec/MOF/2.0/cmof.xml"),
     Factory'Access);
end CMOF.Internals.Factories;
