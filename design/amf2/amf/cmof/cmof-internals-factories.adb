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

with League.Holders.Booleans;
with League.Holders.Integers;

with AMF.CMOF.Parameter_Direction_Kind_Holders;
with AMF.CMOF.Visibility_Kind_Holders;
with AMF.Factories.Registry;
with AMF.Holders.Unlimited_Naturals;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Metamodel;

package body CMOF.Internals.Factories is

   use AMF.CMOF;
   use AMF.Internals.Tables.CMOF_Metamodel;
   use type AMF.Internals.AMF_Element;

   In_Image     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("in");
   In_Out_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("inout");
   Out_Image    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("out");
   Return_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("return");

   Public_Image    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("public");
   Private_Image   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("private");
   Protected_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("protected");
   Package_Image   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("package");

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access CMOF_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      MC      : constant CMOF.CMOF_Class
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Meta_Class));
      Element : CMOF.CMOF_Element;

   begin
      --  Create corresponding proxy element.

      if MC = MC_CMOF_Association then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Association;

      elsif MC = MC_CMOF_Class then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Class;

      elsif MC = MC_CMOF_Comment then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Comment;

      elsif MC = MC_CMOF_Constraint then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Constraint;

      elsif MC = MC_CMOF_Data_Type then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Data_Type;

      elsif MC = MC_CMOF_Element_Import then
         Element :=
           AMF.Internals.Tables.CMOF_Constructors.Create_Element_Import;

      elsif MC = MC_CMOF_Enumeration then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Enumeration;

      elsif MC = MC_CMOF_Enumeration_Literal then
         Element :=
           AMF.Internals.Tables.CMOF_Constructors.Create_Enumeration_Literal;

      elsif MC = MC_CMOF_Expression then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Expression;

      elsif MC = MC_CMOF_Opaque_Expression then
         Element :=
           AMF.Internals.Tables.CMOF_Constructors.Create_Opaque_Expression;

      elsif MC = MC_CMOF_Operation then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Operation;

      elsif MC = MC_CMOF_Package then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Package;

      elsif MC = MC_CMOF_Package_Import then
         Element :=
           AMF.Internals.Tables.CMOF_Constructors.Create_Package_Import;

      elsif MC = MC_CMOF_Package_Merge then
         Element :=
           AMF.Internals.Tables.CMOF_Constructors.Create_Package_Merge;

      elsif MC = MC_CMOF_Parameter then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Parameter;

      elsif MC = MC_CMOF_Primitive_Type then
         Element :=
           AMF.Internals.Tables.CMOF_Constructors.Create_Primitive_Type;

      elsif MC = MC_CMOF_Property then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Property;

      elsif MC = MC_CMOF_Tag then
         Element := AMF.Internals.Tables.CMOF_Constructors.Create_Tag;

      else
         raise Program_Error with CMOF_Element'Image (MC);
      end if;

      return AMF.Internals.Helpers.To_Element (Element);
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   function Create_From_String
    (Self      : not null access CMOF_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      use type League.Strings.Universal_String;

      DT : constant CMOF.CMOF_Data_Type
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Data_Type));

   begin
      if DT = MC_CMOF_Boolean then
         return
           League.Holders.Booleans.To_Holder
            (Boolean'Wide_Wide_Value (Image.To_Wide_Wide_String));

      elsif DT = MC_CMOF_Integer then
         return
           League.Holders.Integers.To_Holder
            (Integer'Wide_Wide_Value (Image.To_Wide_Wide_String));

      elsif DT = MC_CMOF_Unlimited_Natural then
         if Image = League.Strings.To_Universal_String ("*") then
            return AMF.Holders.Unlimited_Naturals.To_Holder (AMF.Unlimited);

         else
            return
              AMF.Holders.Unlimited_Naturals.To_Holder
               ((False,
                 Natural'Wide_Wide_Value (Image.To_Wide_Wide_String)));
         end if;

      elsif DT = MC_CMOF_String then
         return League.Holders.To_Holder (Image);

      elsif DT = MC_CMOF_Parameter_Direction_Kind then
         if Image = In_Image then
            return
              AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder
               (AMF.CMOF.In_Parameter);

         elsif Image = In_Out_Image then
            return
              AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder
               (AMF.CMOF.In_Out_Parameter);

         elsif Image = Out_Image then
            return
              AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder
               (AMF.CMOF.Out_Parameter);

         elsif Image = Return_Image then
            return
              AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder
               (AMF.CMOF.Return_Parameter);

         else
            raise Constraint_Error;
         end if;

      elsif DT = MC_CMOF_Visibility_Kind then
         if Image = Public_Image then
            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (AMF.CMOF.Public_Visibility);

         elsif Image = Private_Image then
            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (AMF.CMOF.Private_Visibility);

         elsif Image = Protected_Image then
            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (AMF.CMOF.Protected_Visibility);

         elsif Image = Package_Image then
            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (AMF.CMOF.Package_Visibility);

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
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access) is
   begin
      --  XXX This subprogram must never be called, link establishment is
      --  implemented at AMF layer.

      raise Program_Error;
   end Create_Link;

   -----------------------
   -- Convert_To_String --
   -----------------------

   function Convert_To_String
    (Self      : not null access CMOF_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      use Ada.Strings;
      use Ada.Strings.Wide_Wide_Fixed;

      DT : constant CMOF.CMOF_Data_Type
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Data_Type));

   begin
      if DT = MC_CMOF_Boolean then
         if League.Holders.Booleans.Element (Value) then
            return League.Strings.To_Universal_String ("true");

         else
            return League.Strings.To_Universal_String ("false");
         end if;

      elsif DT = MC_CMOF_Integer then
         return
           League.Strings.To_Universal_String
            (Ada.Strings.Wide_Wide_Fixed.Trim
              (Integer'Wide_Wide_Image
                (League.Holders.Integers.Element (Value)),
               Ada.Strings.Both));

      elsif DT = MC_CMOF_Unlimited_Natural then
         if AMF.Holders.Unlimited_Naturals.Element (Value).Unlimited then
            return League.Strings.To_Universal_String ("*");

         else
            return
              League.Strings.To_Universal_String
               (Ada.Strings.Wide_Wide_Fixed.Trim
                 (Natural'Wide_Wide_Image
                   (AMF.Holders.Unlimited_Naturals.Element (Value).Value),
                  Ada.Strings.Both));
         end if;

      elsif DT = MC_CMOF_String then
         if League.Holders.Is_Empty (Value) then
            return League.Strings.Empty_Universal_String;

         else
            return League.Holders.Element (Value);
         end if;

      elsif DT = MC_CMOF_Parameter_Direction_Kind then
         if League.Holders.Is_Empty (Value) then
            return League.Strings.Empty_Universal_String;

         else
            declare
               Kind : constant AMF.CMOF.CMOF_Parameter_Direction_Kind
                 := AMF.CMOF.Parameter_Direction_Kind_Holders.Element (Value);

            begin
               case Kind is
                  when AMF.CMOF.In_Parameter =>
                     return In_Image;

                  when AMF.CMOF.In_Out_Parameter =>
                     return In_Out_Image;

                  when AMF.CMOF.Out_Parameter =>
                     return Out_Image;

                  when AMF.CMOF.Return_Parameter =>
                     return Return_Image;
               end case;
            end;
         end if;

      elsif DT = MC_CMOF_Visibility_Kind then
         if League.Holders.Is_Empty (Value) then
            return League.Strings.Empty_Universal_String;

         else
            declare
               Kind : constant AMF.CMOF.CMOF_Visibility_Kind
                 := AMF.CMOF.Visibility_Kind_Holders.Element (Value);

            begin
               case Kind is
                  when AMF.CMOF.Public_Visibility =>
                     return Public_Image;

                  when AMF.CMOF.Private_Visibility =>
                     return Private_Image;

                  when AMF.CMOF.Protected_Visibility =>
                     return Protected_Image;

                  when AMF.CMOF.Package_Visibility =>
                     return Package_Image;
               end case;
            end;
         end if;

      else
         raise Program_Error;
      end if;
   end Convert_To_String;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant CMOF_Factory)
       return not null AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element (MM_CMOF_CMOF));
   end Get_Package;

   Factory : aliased CMOF_Factory;

begin
   AMF.Factories.Registry.Register
    (League.Strings.To_Universal_String
      ("http://schema.omg.org/spec/MOF/2.0/cmof.xml"),
     Factory'Access);
end CMOF.Internals.Factories;
