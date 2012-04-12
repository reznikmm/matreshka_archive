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
with AMF.Internals.Extents;
with AMF.Internals.Helpers;
with AMF.Internals.Links;
with AMF.Internals.Listener_Registry;
with AMF.Internals.Tables.OCL_Constructors;
with AMF.Internals.Tables.OCL_Metamodel;
with AMF.OCL.Holders.Collection_Kinds;

package body AMF.Internals.Factories.OCL_Factories is

   Collection_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Collection");
   Set_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Set");
   Ordered_Set_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("OrderedSet");
   Bag_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Bag");
   Sequence_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Sequence");

   -----------------
   -- Constructor --
   -----------------

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access is
   begin
      return new OCL_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access OCL_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Kind then
         declare
            Item : constant AMF.OCL.OCL_Collection_Kind
              := AMF.OCL.Holders.Collection_Kinds.Element (Value);

         begin
            case Item is
               when AMF.OCL.Collection =>
                  return Collection_Image;

               when AMF.OCL.Set =>
                  return Set_Image;

               when AMF.OCL.Ordered_Set =>
                  return Ordered_Set_Image;

               when AMF.OCL.Bag =>
                  return Bag_Image;

               when AMF.OCL.Sequence =>
                  return Sequence_Image;
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
    (Self       : not null access OCL_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      pragma Unreferenced (Self);

      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Meta_Class.all).Element;
      Element : AMF.Internals.AMF_Element;

   begin
      if MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Any_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Any_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Association_Class_Call_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Association_Class_Call_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Bag_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Bag_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Boolean_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Boolean_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Item then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Collection_Item;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Collection_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Range then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Collection_Range;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Collection_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Enum_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Enum_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Expression_In_Ocl then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Expression_In_Ocl;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_If_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_If_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Integer_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Integer_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Invalid_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Invalid_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Invalid_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Invalid_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Iterate_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Iterate_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Iterator_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Iterator_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Let_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Let_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Message_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Message_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Message_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Message_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Null_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Null_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Operation_Call_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Operation_Call_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Ordered_Set_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Ordered_Set_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Property_Call_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Property_Call_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Real_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Real_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Sequence_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Sequence_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Set_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Set_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_State_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_State_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_String_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_String_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Template_Parameter_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Template_Parameter_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Tuple_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Literal_Part then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Tuple_Literal_Part;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Tuple_Type;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Type_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Type_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Unlimited_Natural_Literal_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Unlimited_Natural_Literal_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Unspecified_Value_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Unspecified_Value_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Variable then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Variable;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Variable_Exp then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Variable_Exp;

      elsif MC = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Void_Type then
         Element := AMF.Internals.Tables.OCL_Constructors.Create_OCL_Void_Type;

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
    (Self      : not null access OCL_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      pragma Unreferenced (Self);

      use type League.Strings.Universal_String;

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Kind then
         if Image = Collection_Image then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Collection);

         elsif Image = Set_Image then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Set);

         elsif Image = Ordered_Set_Image then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Ordered_Set);

         elsif Image = Bag_Image then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Bag);

         elsif Image = Sequence_Image then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Sequence);

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
    (Self           : not null access OCL_Factory;
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
    (Self : not null access constant OCL_Factory)
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
           (AMF.Internals.Tables.OCL_Metamodel.MM_OCL_OCL));
   end Get_Package;

end AMF.Internals.Factories.OCL_Factories;
