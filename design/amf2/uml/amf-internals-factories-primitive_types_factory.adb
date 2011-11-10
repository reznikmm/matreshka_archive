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
with Ada.Strings.Wide_Wide_Fixed;

with League.Holders.Booleans;
with League.Holders.Integers;

with AMF.Holders.Reals;
with AMF.Holders.Unlimited_Naturals;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.Primitive_Types_Metamodel;

with AMF.Internals.Factories.CMOF_Factory;
pragma Unreferenced (AMF.Internals.Factories.CMOF_Factory);
pragma Elaborate_All (AMF.Internals.Factories.CMOF_Factory);
--  CMOF factory package and all its dependencies must be elaborated before
--  elaboration of this package.

package body AMF.Internals.Factories.Primitive_Types_Factory is

   use AMF.Internals.Tables.Primitive_Types_Metamodel;

   --  Boolean's literals

   False_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("false");
   True_Image  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("true");

   --  UnlimitedNatural's literal.

   Unlimited_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("*");

   --------------------
   -- Connect_Extent --
   --------------------

   overriding procedure Connect_Extent
    (Self    : not null access constant Primitive_Types_Factory;
     Element : AMF.Internals.AMF_Element;
     Extent  : AMF.Internals.AMF_Extent) is
   begin
      raise Program_Error;
   end Connect_Extent;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access Primitive_Types_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      MC : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Meta_Class));

   begin
      raise Program_Error with CMOF_Element'Image (MC);
      return null;
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   function Create_From_String
    (Self      : not null access Primitive_Types_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      use type League.Strings.Universal_String;

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Data_Type));

   begin
      if DT = MC_Primitive_Types_Boolean then
         if Image = False_Image then
            return League.Holders.Booleans.To_Holder (False);

         elsif Image = True_Image then
            return League.Holders.Booleans.To_Holder (True);

         else
            raise Constraint_Error;
         end if;

      elsif DT = MC_Primitive_Types_Integer then
         return
           League.Holders.Integers.To_Holder
            (Integer'Wide_Wide_Value (Image.To_Wide_Wide_String));

      elsif DT = MC_Primitive_Types_Unlimited_Natural then
         if Image = League.Strings.To_Universal_String ("*") then
            return AMF.Holders.Unlimited_Naturals.To_Holder (AMF.Unlimited);

         else
            return
              AMF.Holders.Unlimited_Naturals.To_Holder
               ((False,
                 Natural'Wide_Wide_Value (Image.To_Wide_Wide_String)));
         end if;

      elsif DT = MC_Primitive_Types_String then
         return League.Holders.To_Holder (Image);

      elsif DT = MC_Primitive_Types_Real then
         return
           AMF.Holders.Reals.To_Holder
            (AMF.Real'Wide_Wide_Value (Image.To_Wide_Wide_String));
      end if;

      raise Program_Error with "Unknown CMOF data type";
   end Create_From_String;

   ----------------------
   -- Connect_Link_End --
   ----------------------

   overriding procedure Connect_Link_End
    (Self     : not null access constant Primitive_Types_Factory;
     Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link;
     Other    : AMF.Internals.AMF_Element) is
   begin
      raise Program_Error;
   end Connect_Link_End;

   -----------------------
   -- Convert_To_String --
   -----------------------

   function Convert_To_String
    (Self      : not null access Primitive_Types_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Data_Type));

   begin
      if DT = MC_Primitive_Types_Boolean then
         if League.Holders.Booleans.Element (Value) then
            return True_Image;

         else
            return False_Image;
         end if;

      elsif DT = MC_Primitive_Types_Integer then
         return
           League.Strings.To_Universal_String
            (Ada.Strings.Wide_Wide_Fixed.Trim
              (Integer'Wide_Wide_Image
                (League.Holders.Integers.Element (Value)),
               Ada.Strings.Both));

      elsif DT = MC_Primitive_Types_Unlimited_Natural then
         if AMF.Holders.Unlimited_Naturals.Element (Value).Unlimited then
            return Unlimited_Image;

         else
            return
              League.Strings.To_Universal_String
               (Ada.Strings.Wide_Wide_Fixed.Trim
                 (Natural'Wide_Wide_Image
                   (AMF.Holders.Unlimited_Naturals.Element (Value).Value),
                  Ada.Strings.Both));
         end if;

      elsif DT = MC_Primitive_Types_String then
         return League.Holders.Element (Value);

      elsif DT = MC_Primitive_Types_Real then
         return
           League.Strings.To_Universal_String
            (Ada.Strings.Wide_Wide_Fixed.Trim
              (AMF.Real'Wide_Wide_Image
                (AMF.Holders.Reals.Element (Value)),
               Ada.Strings.Both));
      end if;

      raise Program_Error;
   end Convert_To_String;

   ----------------
   -- Get_Extent --
   ----------------

   overriding function Get_Extent
    (Self    : not null access constant Primitive_Types_Factory;
     Element : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Extent is
   begin
      raise Program_Error;
      return 0;
   end Get_Extent;

   -------------------
   -- Get_Metamodel --
   -------------------

   overriding function Get_Metamodel
    (Self : not null access constant Primitive_Types_Factory)
       return AMF.Internals.AMF_Metamodel is
   begin
      return Primitive_Types_Metamodel;
   end Get_Metamodel;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant Primitive_Types_Factory)
       return not null AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element
           (MM_Primitive_Types_Primitive_Types));
   end Get_Package;

   ----------------
   -- To_Element --
   ----------------

   overriding function To_Element
    (Self     : not null access constant Primitive_Types_Factory;
     Element  : AMF.Internals.AMF_Element)
       return AMF.Elements.Element_Access is
   begin
      raise Program_Error;
      return null;
   end To_Element;

   Factory : aliased Primitive_Types_Factory;

begin
   --  Initialize metamodel.

   AMF.Internals.Tables.Primitive_Types_Metamodel.Initialize;

   --  Register factory.

   AMF.Internals.Factories.Register (Factory'Access);
end AMF.Internals.Factories.Primitive_Types_Factory;
