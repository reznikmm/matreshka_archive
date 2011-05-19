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

package body CMOF.Internals.Factories is

   use CMOF.Internals.Metamodel;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access CMOF_Factory;
     Extent     : CMOF_Extent;
     Meta_Class : CMOF_Class) return CMOF_Element is
   begin
      if Meta_Class = MC_CMOF_Association then
         return CMOF.Internals.Constructors.Create_Association (Extent);

      elsif Meta_Class = MC_CMOF_Class then
         return CMOF.Internals.Constructors.Create_Class (Extent);

      elsif Meta_Class = MC_CMOF_Comment then
         return CMOF.Internals.Constructors.Create_Comment (Extent);

      elsif Meta_Class = MC_CMOF_Constraint then
         return CMOF.Internals.Constructors.Create_Constraint (Extent);

      elsif Meta_Class = MC_CMOF_Data_Type then
         return CMOF.Internals.Constructors.Create_Data_Type (Extent);

      elsif Meta_Class = MC_CMOF_Element_Import then
         return CMOF.Internals.Constructors.Create_Element_Import (Extent);

      elsif Meta_Class = MC_CMOF_Enumeration then
         return CMOF.Internals.Constructors.Create_Enumeration (Extent);

      elsif Meta_Class = MC_CMOF_Enumeration_Literal then
         return CMOF.Internals.Constructors.Create_Enumeration_Literal (Extent);

      elsif Meta_Class = MC_CMOF_Expression then
         return CMOF.Internals.Constructors.Create_Expression (Extent);

      elsif Meta_Class = MC_CMOF_Opaque_Expression then
         return CMOF.Internals.Constructors.Create_Opaque_Expression (Extent);

      elsif Meta_Class = MC_CMOF_Operation then
         return CMOF.Internals.Constructors.Create_Operation (Extent);

      elsif Meta_Class = MC_CMOF_Package then
         return CMOF.Internals.Constructors.Create_Package (Extent);

      elsif Meta_Class = MC_CMOF_Package_Import then
         return CMOF.Internals.Constructors.Create_Package_Import (Extent);

      elsif Meta_Class = MC_CMOF_Package_Merge then
         return CMOF.Internals.Constructors.Create_Package_Merge (Extent);

      elsif Meta_Class = MC_CMOF_Parameter then
         return CMOF.Internals.Constructors.Create_Parameter (Extent);

      elsif Meta_Class = MC_CMOF_Primitive_Type then
         return CMOF.Internals.Constructors.Create_Primitive_Type (Extent);

      elsif Meta_Class = MC_CMOF_Property then
         return CMOF.Internals.Constructors.Create_Property (Extent);
      end if;

      raise Program_Error with "Unknown CMOF class";
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   function Create_From_String
    (Self      : not null access CMOF_Factory;
     Data_Type : CMOF_Data_Type;
     Image     : League.Strings.Universal_String) return AMF.Values.Value
   is
      use type League.Strings.Universal_String;

   begin
      if Data_Type = MC_CMOF_Boolean then
         return
          (AMF.Values.Value_Boolean,
           Boolean'Wide_Wide_Value (Image.To_Wide_Wide_String));

      elsif Data_Type = MC_CMOF_Integer then
         return
          (AMF.Values.Value_Integer,
           Integer'Wide_Wide_Value (Image.To_Wide_Wide_String));

      elsif Data_Type = MC_CMOF_Unlimited_Natural then
         if Image = League.Strings.To_Universal_String ("*") then
            return (AMF.Values.Value_Unlimited_Natural, (Unlimited => True));

         else
            return
             (AMF.Values.Value_Unlimited_Natural,
              (False,
               Natural'Wide_Wide_Value (Image.To_Wide_Wide_String)));
         end if;

      elsif Data_Type = MC_CMOF_String then
         return (AMF.Values.Value_String, Image);

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
            return
             (AMF.Values.Value_CMOF_Visibility_Kind,
              CMOF.Public_Visibility);

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
     First_Element  : CMOF_Element;
     Second_Element : CMOF_Element)
   is
      Member_End : constant Ordered_Set_Of_CMOF_Property
        := CMOF.Internals.Attributes.Internal_Get_Member_End (Association);

   begin
      CMOF.Internals.Links.Internal_Create_Link
       (Association,
        First_Element,
        CMOF.Internals.Collections.Element (Member_End, 1),
        Second_Element,
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
         return Value.String_Value;

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
