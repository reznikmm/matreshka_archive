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
with AMF.Internals.Elements;
with AMF.Internals.Helpers;
with AMF.Internals.Links;
with AMF.Internals.Tables.Primitive_Types_Metamodel;

package body AMF.Internals.Factories.Primitive_Types_Factories is

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

   function Convert_Real_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Real_From_String
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
      return new Primitive_Types_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access Primitive_Types_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean then
         return Convert_Boolean_To_String (Value);

      elsif DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Integer then
         return Convert_Integer_To_String (Value);

      elsif DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Real then
         return Convert_Real_To_String (Value);

      elsif DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String then
         return Convert_String_To_String (Value);

      elsif DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Unlimited_Natural then
         return Convert_Unlimited_Natural_To_String (Value);

      else
         raise Program_Error;
      end if;
   end Convert_To_String;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access Primitive_Types_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access is
   begin
      raise Program_Error;
      return null;
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   overriding function Create_From_String
    (Self      : not null access Primitive_Types_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      pragma Unreferenced (Self);

      use type League.Strings.Universal_String;

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean then
         return Create_Boolean_From_String (Image);

      elsif DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Integer then
         return Create_Integer_From_String (Image);

      elsif DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Real then
         return Create_Real_From_String (Image);

      elsif DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String then
         return Create_String_From_String (Image);

      elsif DT = AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Unlimited_Natural then
         return Create_Unlimited_Natural_From_String (Image);

      else
         raise Program_Error;
      end if;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   overriding function Create_Link
    (Self           : not null access Primitive_Types_Factory;
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
    (Self : not null access constant Primitive_Types_Factory)
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
           (AMF.Internals.Tables.Primitive_Types_Metamodel.MM_Primitive_Types_Primitive_Types));
   end Get_Package;

end AMF.Internals.Factories.Primitive_Types_Factories;
