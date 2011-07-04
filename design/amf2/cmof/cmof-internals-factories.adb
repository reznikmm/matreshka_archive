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

with AMF.CMOF.Parameter_Direction_Kind_Holders;
with AMF.CMOF.Visibility_Kind_Holders;
with AMF.Factories.Registry;
with AMF.Holders.Unlimited_Naturals;
with AMF.Internals.CMOF_Elements;
with AMF.Internals.Listener_Registry;
with CMOF.Internals.Attributes;
with CMOF.Internals.Collections;
with CMOF.Internals.Constructors;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Links;
with CMOF.Internals.Proxies;
with CMOF.Internals.Tables;
with League.Holders.Booleans;
with League.Holders.Integers;

package body CMOF.Internals.Factories is

   use CMOF.Internals.Metamodel;
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
     Extent     : CMOF.CMOF_Extent;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      MC      : constant CMOF.CMOF_Class
        := AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
            (Meta_Class.all).Id;
      Element : CMOF.CMOF_Element;

   begin
      --  Create corresponding proxy element.

      if MC = MC_CMOF_Association then
         Element := CMOF.Internals.Constructors.Create_Association (Extent);

      elsif MC = MC_CMOF_Class then
         Element := CMOF.Internals.Constructors.Create_Class (Extent);

      elsif MC = MC_CMOF_Comment then
         Element := CMOF.Internals.Constructors.Create_Comment (Extent);

      elsif MC = MC_CMOF_Constraint then
         Element := CMOF.Internals.Constructors.Create_Constraint (Extent);

      elsif MC = MC_CMOF_Data_Type then
         Element := CMOF.Internals.Constructors.Create_Data_Type (Extent);

      elsif MC = MC_CMOF_Element_Import then
         Element := CMOF.Internals.Constructors.Create_Element_Import (Extent);

      elsif MC = MC_CMOF_Enumeration then
         Element := CMOF.Internals.Constructors.Create_Enumeration (Extent);

      elsif MC = MC_CMOF_Enumeration_Literal then
         Element :=
           CMOF.Internals.Constructors.Create_Enumeration_Literal (Extent);

      elsif MC = MC_CMOF_Expression then
         Element := CMOF.Internals.Constructors.Create_Expression (Extent);

      elsif MC = MC_CMOF_Opaque_Expression then
         Element :=
           CMOF.Internals.Constructors.Create_Opaque_Expression (Extent);

      elsif MC = MC_CMOF_Operation then
         Element := CMOF.Internals.Constructors.Create_Operation (Extent);

      elsif MC = MC_CMOF_Package then
         Element := CMOF.Internals.Constructors.Create_Package (Extent);

      elsif MC = MC_CMOF_Package_Import then
         Element := CMOF.Internals.Constructors.Create_Package_Import (Extent);

      elsif MC = MC_CMOF_Package_Merge then
         Element := CMOF.Internals.Constructors.Create_Package_Merge (Extent);

      elsif MC = MC_CMOF_Parameter then
         Element := CMOF.Internals.Constructors.Create_Parameter (Extent);

      elsif MC = MC_CMOF_Primitive_Type then
         Element := CMOF.Internals.Constructors.Create_Primitive_Type (Extent);

      elsif MC = MC_CMOF_Property then
         Element := CMOF.Internals.Constructors.Create_Property (Extent);

      else
         raise Program_Error with CMOF_Element'Image (MC);
      end if;

      AMF.Internals.Listener_Registry.Notify_Instance_Create
       (CMOF.Internals.Proxies.Get_Proxy (Element));

      return CMOF.Internals.Proxies.Get_Proxy (Element);
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
        := AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
            (Data_Type.all).Id;

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
               (CMOF.In_Direction);

         elsif Image = In_Out_Image then
            return
              AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder
               (CMOF.In_Out_Direction);

         elsif Image = Out_Image then
            return
              AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder
               (CMOF.Out_Direction);

         elsif Image = Return_Image then
            return
              AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder
               (CMOF.Return_Direction);

         else
            raise Constraint_Error;
         end if;

      elsif DT = MC_CMOF_Visibility_Kind then
         if Image = Public_Image then
            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (CMOF.Public_Visibility);

         elsif Image = Private_Image then
            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (CMOF.Private_Visibility);

         elsif Image = Protected_Image then
            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (CMOF.Protected_Visibility);

         elsif Image = Package_Image then
            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (CMOF.Package_Visibility);

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
     Second_Element : not null AMF.Elements.Element_Access)
   is
      A          : CMOF.CMOF_Association
        := AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
            (Association.all).Id;
      Member_End : constant Ordered_Set_Of_CMOF_Property
        := CMOF.Internals.Attributes.Internal_Get_Member_End (A);

   begin
      --  XXX This implementation is limit links to connect elements from the
      --  same metamodel.

      CMOF.Internals.Links.Internal_Create_Link
       (A,
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
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      use Ada.Strings;
      use Ada.Strings.Wide_Wide_Fixed;

      DT : constant CMOF.CMOF_Data_Type
        := AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
            (Data_Type.all).Id;

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
                  when CMOF.In_Direction =>
                     return In_Image;

                  when CMOF.In_Out_Direction =>
                     return In_Out_Image;

                  when CMOF.Out_Direction =>
                     return Out_Image;

                  when CMOF.Return_Direction =>
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
                  when CMOF.Public_Visibility =>
                     return Public_Image;

                  when CMOF.Private_Visibility =>
                     return Private_Image;

                  when CMOF.Protected_Visibility =>
                     return Protected_Image;

                  when CMOF.Package_Visibility =>
                     return Package_Image;
               end case;
            end;
         end if;

      else
         raise Program_Error;
      end if;
   end Convert_To_String;

   Factory : aliased CMOF_Factory;

begin
   AMF.Factories.Registry.Register
    (League.Strings.To_Universal_String
      ("http://schema.omg.org/spec/MOF/2.0/cmof.xml"),
     Factory'Access);
end CMOF.Internals.Factories;
