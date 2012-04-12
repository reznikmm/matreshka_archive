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

   Collection_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Collection");
   Set_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Set");
   Ordered_Set_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("OrderedSet");
   Bag_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Bag");
   Sequence_Img : constant League.Strings.Universal_String
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
                  return Collection_Img;

               when AMF.OCL.Set =>
                  return Set_Img;

               when AMF.OCL.Ordered_Set =>
                  return Ordered_Set_Img;

               when AMF.OCL.Bag =>
                  return Bag_Img;

               when AMF.OCL.Sequence =>
                  return Sequence_Img;
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
         if Image = Collection_Img then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Collection);

         elsif Image = Set_Img then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Set);

         elsif Image = Ordered_Set_Img then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Ordered_Set);

         elsif Image = Bag_Img then
            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Bag);

         elsif Image = Sequence_Img then
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

   ---------------------
   -- Create_Any_Type --
   ---------------------

   overriding function Create_Any_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Any_Types.OCL_Any_Type_Access is
   begin
      return
        AMF.OCL.Any_Types.OCL_Any_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Any_Type))));
   end Create_Any_Type;

   ---------------------------------------
   -- Create_Association_Class_Call_Exp --
   ---------------------------------------

   overriding function Create_Association_Class_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access is
   begin
      return
        AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Association_Class_Call_Exp))));
   end Create_Association_Class_Call_Exp;

   ---------------------
   -- Create_Bag_Type --
   ---------------------

   overriding function Create_Bag_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Bag_Types.OCL_Bag_Type_Access is
   begin
      return
        AMF.OCL.Bag_Types.OCL_Bag_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Bag_Type))));
   end Create_Bag_Type;

   --------------------------------
   -- Create_Boolean_Literal_Exp --
   --------------------------------

   overriding function Create_Boolean_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Boolean_Literal_Exp))));
   end Create_Boolean_Literal_Exp;

   ----------------------------
   -- Create_Collection_Item --
   ----------------------------

   overriding function Create_Collection_Item
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Items.OCL_Collection_Item_Access is
   begin
      return
        AMF.OCL.Collection_Items.OCL_Collection_Item_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Item))));
   end Create_Collection_Item;

   -----------------------------------
   -- Create_Collection_Literal_Exp --
   -----------------------------------

   overriding function Create_Collection_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Literal_Exp))));
   end Create_Collection_Literal_Exp;

   -----------------------------
   -- Create_Collection_Range --
   -----------------------------

   overriding function Create_Collection_Range
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access is
   begin
      return
        AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Range))));
   end Create_Collection_Range;

   ----------------------------
   -- Create_Collection_Type --
   ----------------------------

   overriding function Create_Collection_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Types.OCL_Collection_Type_Access is
   begin
      return
        AMF.OCL.Collection_Types.OCL_Collection_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Type))));
   end Create_Collection_Type;

   -----------------------------
   -- Create_Enum_Literal_Exp --
   -----------------------------

   overriding function Create_Enum_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Enum_Literal_Exp))));
   end Create_Enum_Literal_Exp;

   ------------------------------
   -- Create_Expression_In_Ocl --
   ------------------------------

   overriding function Create_Expression_In_Ocl
    (Self : not null access OCL_Factory)
       return AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access is
   begin
      return
        AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Expression_In_Ocl))));
   end Create_Expression_In_Ocl;

   -------------------
   -- Create_If_Exp --
   -------------------

   overriding function Create_If_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.If_Exps.OCL_If_Exp_Access is
   begin
      return
        AMF.OCL.If_Exps.OCL_If_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_If_Exp))));
   end Create_If_Exp;

   --------------------------------
   -- Create_Integer_Literal_Exp --
   --------------------------------

   overriding function Create_Integer_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Integer_Literal_Exp))));
   end Create_Integer_Literal_Exp;

   --------------------------------
   -- Create_Invalid_Literal_Exp --
   --------------------------------

   overriding function Create_Invalid_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Invalid_Literal_Exp))));
   end Create_Invalid_Literal_Exp;

   -------------------------
   -- Create_Invalid_Type --
   -------------------------

   overriding function Create_Invalid_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access is
   begin
      return
        AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Invalid_Type))));
   end Create_Invalid_Type;

   ------------------------
   -- Create_Iterate_Exp --
   ------------------------

   overriding function Create_Iterate_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access is
   begin
      return
        AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Iterate_Exp))));
   end Create_Iterate_Exp;

   -------------------------
   -- Create_Iterator_Exp --
   -------------------------

   overriding function Create_Iterator_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access is
   begin
      return
        AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Iterator_Exp))));
   end Create_Iterator_Exp;

   --------------------
   -- Create_Let_Exp --
   --------------------

   overriding function Create_Let_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Let_Exps.OCL_Let_Exp_Access is
   begin
      return
        AMF.OCL.Let_Exps.OCL_Let_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Let_Exp))));
   end Create_Let_Exp;

   ------------------------
   -- Create_Message_Exp --
   ------------------------

   overriding function Create_Message_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Message_Exps.OCL_Message_Exp_Access is
   begin
      return
        AMF.OCL.Message_Exps.OCL_Message_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Message_Exp))));
   end Create_Message_Exp;

   -------------------------
   -- Create_Message_Type --
   -------------------------

   overriding function Create_Message_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Message_Types.OCL_Message_Type_Access is
   begin
      return
        AMF.OCL.Message_Types.OCL_Message_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Message_Type))));
   end Create_Message_Type;

   -----------------------------
   -- Create_Null_Literal_Exp --
   -----------------------------

   overriding function Create_Null_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Null_Literal_Exp))));
   end Create_Null_Literal_Exp;

   -------------------------------
   -- Create_Operation_Call_Exp --
   -------------------------------

   overriding function Create_Operation_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access is
   begin
      return
        AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Operation_Call_Exp))));
   end Create_Operation_Call_Exp;

   -----------------------------
   -- Create_Ordered_Set_Type --
   -----------------------------

   overriding function Create_Ordered_Set_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access is
   begin
      return
        AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Ordered_Set_Type))));
   end Create_Ordered_Set_Type;

   ------------------------------
   -- Create_Property_Call_Exp --
   ------------------------------

   overriding function Create_Property_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access is
   begin
      return
        AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Property_Call_Exp))));
   end Create_Property_Call_Exp;

   -----------------------------
   -- Create_Real_Literal_Exp --
   -----------------------------

   overriding function Create_Real_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Real_Literal_Exp))));
   end Create_Real_Literal_Exp;

   --------------------------
   -- Create_Sequence_Type --
   --------------------------

   overriding function Create_Sequence_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access is
   begin
      return
        AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Sequence_Type))));
   end Create_Sequence_Type;

   ---------------------
   -- Create_Set_Type --
   ---------------------

   overriding function Create_Set_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Set_Types.OCL_Set_Type_Access is
   begin
      return
        AMF.OCL.Set_Types.OCL_Set_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Set_Type))));
   end Create_Set_Type;

   ----------------------
   -- Create_State_Exp --
   ----------------------

   overriding function Create_State_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.State_Exps.OCL_State_Exp_Access is
   begin
      return
        AMF.OCL.State_Exps.OCL_State_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_State_Exp))));
   end Create_State_Exp;

   -------------------------------
   -- Create_String_Literal_Exp --
   -------------------------------

   overriding function Create_String_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access is
   begin
      return
        AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_String_Literal_Exp))));
   end Create_String_Literal_Exp;

   ------------------------------------
   -- Create_Template_Parameter_Type --
   ------------------------------------

   overriding function Create_Template_Parameter_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access is
   begin
      return
        AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Template_Parameter_Type))));
   end Create_Template_Parameter_Type;

   ------------------------------
   -- Create_Tuple_Literal_Exp --
   ------------------------------

   overriding function Create_Tuple_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Literal_Exp))));
   end Create_Tuple_Literal_Exp;

   -------------------------------
   -- Create_Tuple_Literal_Part --
   -------------------------------

   overriding function Create_Tuple_Literal_Part
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access is
   begin
      return
        AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Literal_Part))));
   end Create_Tuple_Literal_Part;

   -----------------------
   -- Create_Tuple_Type --
   -----------------------

   overriding function Create_Tuple_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access is
   begin
      return
        AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Type))));
   end Create_Tuple_Type;

   ---------------------
   -- Create_Type_Exp --
   ---------------------

   overriding function Create_Type_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Type_Exps.OCL_Type_Exp_Access is
   begin
      return
        AMF.OCL.Type_Exps.OCL_Type_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Type_Exp))));
   end Create_Type_Exp;

   ------------------------------------------
   -- Create_Unlimited_Natural_Literal_Exp --
   ------------------------------------------

   overriding function Create_Unlimited_Natural_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access is
   begin
      return
        AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Unlimited_Natural_Literal_Exp))));
   end Create_Unlimited_Natural_Literal_Exp;

   ----------------------------------
   -- Create_Unspecified_Value_Exp --
   ----------------------------------

   overriding function Create_Unspecified_Value_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access is
   begin
      return
        AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Unspecified_Value_Exp))));
   end Create_Unspecified_Value_Exp;

   ---------------------
   -- Create_Variable --
   ---------------------

   overriding function Create_Variable
    (Self : not null access OCL_Factory)
       return AMF.OCL.Variables.OCL_Variable_Access is
   begin
      return
        AMF.OCL.Variables.OCL_Variable_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Variable))));
   end Create_Variable;

   -------------------------
   -- Create_Variable_Exp --
   -------------------------

   overriding function Create_Variable_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access is
   begin
      return
        AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Variable_Exp))));
   end Create_Variable_Exp;

   ----------------------
   -- Create_Void_Type --
   ----------------------

   overriding function Create_Void_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Void_Types.OCL_Void_Type_Access is
   begin
      return
        AMF.OCL.Void_Types.OCL_Void_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Void_Type))));
   end Create_Void_Type;

end AMF.Internals.Factories.OCL_Factories;
